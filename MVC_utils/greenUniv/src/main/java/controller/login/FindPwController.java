package controller.login;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

import service.AuthRecoveryService;

@WebServlet("/login/findPw.do")
public class FindPwController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final AuthRecoveryService recoveryService = new AuthRecoveryService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/login/find-pw.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding(StandardCharsets.UTF_8.name());

        String identification = trim(req.getParameter("identification"));
        String email          = trim(req.getParameter("email"));

        if (identification.isEmpty() || email.isEmpty()) {
            req.setAttribute("error", "아이디와 이메일을 입력해 주세요.");
            req.getRequestDispatcher("/WEB-INF/views/login/find-pw.jsp").forward(req, resp);
            return;
        }

        // 존재 여부와 무관하게 동일한 안내(사용자 열거 방지)
        boolean issued = recoveryService.issueTemporaryPassword(identification, email);
        req.setAttribute("done", true);
        req.setAttribute("info", "입력하신 이메일 주소로 임시 비밀번호 발급 안내를 보냈습니다. 메일을 확인해 주세요.");

        // (선택) 개발 환경에서 메일 인프라가 없으면 아래처럼 화면에 표시할 수도 있음
        // if (!issued) { req.setAttribute("info", "임시 비밀번호 발급에 실패했습니다. 관리자에게 문의해 주세요."); }

        req.getRequestDispatcher("/WEB-INF/views/login/find-pw.jsp").forward(req, resp);
    }

    private static String trim(String s) { return s == null ? "" : s.trim(); }
}
