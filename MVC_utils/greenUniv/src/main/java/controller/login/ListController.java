package controller.login;

import java.io.IOException;
import java.nio.charset.StandardCharsets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.UserService;
import util.ResultCode;

@WebServlet("/login/login.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private final UserService userService = new UserService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/login/login.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding(StandardCharsets.UTF_8.name());

        String id    = trim(req.getParameter("identification"));
        String pw    = nvl(req.getParameter("password"));
        String role  = nvl(req.getParameter("role"));  // STUDENT/STAFF/GUEST

        ResultCode result = userService.loginCheck(id, pw, role);

        switch (result) {
        case LOGIN_SUCCESS:
            HttpSession session = req.getSession(true);
            session.setAttribute("LOGIN_USER", userService.getUser(id)); // 필요 시 유저 객체 반환
            session.setMaxInactiveInterval(60 * 30);
            resp.sendRedirect(req.getContextPath() + "/index.jsp?code=" + result.getCode()
                    + "&msg=" + urlEnc(result.getMessage()));
            return;

        case LOGIN_INPUT_EMPTY:
            resp.sendRedirect(req.getContextPath() + "/login/login.do?code=" + result.getCode()
                    + "&msg=" + urlEnc(result.getMessage()));
            return;

        case LOGIN_FAILED:
        default:
            resp.sendRedirect(req.getContextPath() + "/login/login.do?code=" + result.getCode()
                    + "&msg=" + urlEnc(result.getMessage()));
            return;
            }
    }

	private static String trim(String s) {
	    return (s == null) ? "" : s.trim();
	}

	private static String nvl(String s) {
	    return (s == null) ? "" : s;
	}

	private static String urlEnc(String s) {
	    try {
	        return java.net.URLEncoder.encode(s, StandardCharsets.UTF_8.name());
	    } catch (Exception e) {
	        return "";
	    }
     }
}
