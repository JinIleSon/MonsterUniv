package controller.mypage;

import java.io.IOException;

import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

// 폼 action과 정확히 일치해야 함: /mypage/profile/update.do
@WebServlet("/mypage/profile/update.do")
public class ProfileUpdateController extends HttpServlet {
 
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // 로그인 세션에서 아이디(String) 사용 (로그인 코드 유지)
        HttpSession s = req.getSession(false);
        String id = (s == null) ? null : (String) s.getAttribute("LOGIN_USER");
        if (id == null || id.isBlank()) {
            resp.sendRedirect(req.getContextPath() + "/login/login.do");
            return;
        }

        String nickname = nvl(req.getParameter("nickname"));
        String email    = nvl(req.getParameter("email"));
        String phone    = nvl(req.getParameter("phone"));
        String address  = nvl(req.getParameter("address"));

        UserDAO userDAO = new UserDAO();
        boolean ok = userDAO.updateProfile(id, nickname, email, phone, address);

        // 저장 후 마이페이지로
        if (ok) {
            // (선택) 플래시 메시지
            s.setAttribute("FLASH_MSG", "프로필이 저장되었습니다.");
        } else {
            s.setAttribute("FLASH_MSG", "저장 중 오류가 발생했습니다.");
        }
        resp.sendRedirect(req.getContextPath() + "/mypage/mypage.do");
    }

    private static String nvl(String s) { return (s == null) ? "" : s.trim(); }
}
