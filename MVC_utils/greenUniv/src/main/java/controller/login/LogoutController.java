package controller.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/login/logout.do")
public class LogoutController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession old = req.getSession(false);
        if (old != null) old.invalidate();            // 세션 종료(보안상 권장)
        HttpSession fresh = req.getSession(true);      // 플래시 메시지용 새 세션
        fresh.setAttribute("FLASH_MSG", "로그아웃 되었습니다.");
        resp.sendRedirect(req.getContextPath() + "/main.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
