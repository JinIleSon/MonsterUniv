package controller.join;

import java.io.IOException;
import java.nio.charset.StandardCharsets;

import dao.UserDAO;
import dto.UserDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import util.ResultCode;

@WebServlet("/login/join.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;

    private final UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

    	// terms.jsp에서 넘어온 동의 체크
        String agreeAll = req.getParameter("agreeAll");

        if (agreeAll == null) {
            req.setAttribute("error", "약관 및 개인정보 수집·이용에 동의해야 다음 단계로 진행할 수 있습니다.");
            // 약관 페이지로 되돌리기
            req.getRequestDispatcher("/WEB-INF/views/login/terms.jsp").forward(req, resp);
            return;
        }

        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/views/login/join.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setCharacterEncoding(StandardCharsets.UTF_8.name());

        // 1) 파라미터 수집
        String identification = trim(req.getParameter("identification"));
        String password       = nvl(req.getParameter("password"));
        String passwordConfirm= nvl(req.getParameter("passwordConfirm"));
        String name           = trim(req.getParameter("name"));   // -> DTO.nickname 으로 저장
        String phone          = trim(req.getParameter("phone"));
        String email          = trim(req.getParameter("email"));
        String zip            = trim(req.getParameter("zip"));
        String addr1          = trim(req.getParameter("addr1"));
        String addr2          = trim(req.getParameter("addr2"));

        // 2) 서버 검증
        String err = validate(identification, password, passwordConfirm, name, phone, email);
        if (err != null) {
            keepInputs(req, identification, name, phone, email, zip, addr1, addr2);
            req.setAttribute("error", err);
            forwardJoin(req, resp);
            return;
        }

        // (선택) 비밀번호 해시 적용 지점 - BCrypt 등 사용 권장
        // String hashed = BCrypt.hashpw(password, BCrypt.gensalt());
        String hashed = password;

        // 3) 사전 중복체크(옵션) - 더 친절한 메시지를 위해
        // ID는 PK 제약으로 잡히므로 생략해도 되지만, 닉네임/복합키는 미리 검사 가능
        if (userDAO.existsNickname(name)) {
            keepInputs(req, identification, null, phone, email, zip, addr1, addr2);
            req.setAttribute("error", "이미 사용 중인 이름(닉네임)입니다.");
            forwardJoin(req, resp);
            return;
        }
        if (userDAO.existsCombo(name, phone, email)) {
            keepInputs(req, identification, name, null, null, zip, addr1, addr2);
            req.setAttribute("error", "전화번호/이메일 조합이 이미 존재합니다.");
            forwardJoin(req, resp);
            return;
        }

        // 4) DTO 구성
        UserDTO u = new UserDTO();
        u.setIdentification(identification);
        u.setPassword(hashed);
        u.setNickname(name);               // 폼의 name -> DTO.nickname
        u.setPhone(phone);
        u.setEmail(email);
        u.setAddress(buildAddress(zip, addr1, addr2)); // 한 칸 address 로 합침
        u.setRole("GUEST");                // 기본 권한

        // 5) INSERT
        UserDAO.InsertResult result = userDAO.insert(u);

        switch (result) {
            case SUCCESS:
                // 성공: 로그인 페이지로 (코드값으로 메시지 사용하거나 msg 직접 사용)
                String msg = ResultCode.REGISTER_SUCCESS.getMessage();
                resp.sendRedirect(req.getContextPath() + "/login/login.do?code=" + ResultCode.REGISTER_SUCCESS.getCode()
                        + "&msg=" + urlEnc(msg));
                return;

            case DUPLICATE_ID:
                keepInputs(req, null, name, phone, email, zip, addr1, addr2); // 아이디만 다시 입력 유도
                req.setAttribute("error", "이미 사용 중인 아이디입니다.");
                break;

            case DUPLICATE_NICKNAME:
                keepInputs(req, identification, null, phone, email, zip, addr1, addr2);
                req.setAttribute("error", "이미 사용 중인 이름(닉네임)입니다.");
                break;

            case DUPLICATE_COMBO:
                keepInputs(req, identification, name, null, null, zip, addr1, addr2);
                req.setAttribute("error", "전화번호/이메일 조합이 이미 존재합니다.");
                break;

            default:
                keepInputs(req, identification, name, phone, email, zip, addr1, addr2);
                req.setAttribute("error", "회원가입 처리 중 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.");
                break;
        }

        forwardJoin(req, resp);
    }

    // ===== helpers =====
    private void forwardJoin(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/views/login/join.jsp");
        rd.forward(req, resp);
    }

    private static String trim(String s) { return s == null ? "" : s.trim(); }
    private static String nvl(String s) { return s == null ? "" : s; }

    private static String buildAddress(String zip, String addr1, String addr2) {
        StringBuilder sb = new StringBuilder();
        if (!trim(zip).isEmpty()) {
			sb.append("(").append(trim(zip)).append(") ");
		}
        if (!trim(addr1).isEmpty()) {
			sb.append(trim(addr1));
		}
        if (!trim(addr2).isEmpty()) {
            if (sb.length() > 0) {
				sb.append(", ");
			}
            sb.append(trim(addr2));
        }
        return sb.toString();
    }

    private static void keepInputs(HttpServletRequest req,
                                   String identification, String name,
                                   String phone, String email,
                                   String zip, String addr1, String addr2) {
        if (identification != null) {
			req.setAttribute("identification_val", identification);
		}
        if (name != null) {
			req.setAttribute("name_val", name);
		}
        if (phone != null) {
			req.setAttribute("phone_val", phone);
		}
        if (email != null) {
			req.setAttribute("email_val", email);
		}
        if (zip != null) {
			req.setAttribute("zip_val", zip);
		}
        if (addr1 != null) {
			req.setAttribute("addr1_val", addr1);
		}
        if (addr2 != null) {
			req.setAttribute("addr2_val", addr2);
		}
    }

    private static String urlEnc(String s) {
        try { return java.net.URLEncoder.encode(s, StandardCharsets.UTF_8.name()); }
        catch (Exception e) { return ""; }
    }

    private static String validate(String id, String pw, String pwc, String name, String phone, String email) {
        if (id.isEmpty() || pw.isEmpty() || pwc.isEmpty() || name.isEmpty() || phone.isEmpty() || email.isEmpty()) {
			return "필수 항목을 모두 입력해 주세요.";
		}
        if (!pw.equals(pwc)) {
			return "비밀번호와 비밀번호 확인이 일치하지 않습니다.";
		}
        if (!id.matches("^[A-Za-z0-9]{4,10}$")) {
			return "아이디는 영문/숫자 4~10자여야 합니다.";
		}
        if (pw.length() < 8 || pw.length() > 16) {
			return "비밀번호는 8~16자여야 합니다.";
		}
        if (!pw.matches("^(?=.*[A-Za-z])(?=.*\\d)(?=.*[^A-Za-z0-9]).{8,16}$")) {
			return "비밀번호는 영문/숫자/특수문자를 포함해야 합니다.";
		}
        if (!phone.matches("^01[0-9]-\\d{3,4}-\\d{4}$")) {
			return "휴대폰 형식이 올바르지 않습니다. 예) 010-1234-5678";
		}
        if (!email.contains("@") || !email.contains(".")) {
			return "이메일 형식이 올바르지 않습니다.";
		}
        return null;
    }
}
