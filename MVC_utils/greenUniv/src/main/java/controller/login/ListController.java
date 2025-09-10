package controller.login;

import java.io.IOException;
import java.nio.charset.StandardCharsets;

import dto.UserDTO;
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
		
		HttpSession session = req.getSession(false);
        if (session != null) {
            Object flash = session.getAttribute("FLASH_MSG");
            if (flash != null) {
                req.setAttribute("flash", flash.toString()); // request로 옮기고
                session.removeAttribute("FLASH_MSG");         // 세션에서 즉시 제거(1회성)
            }
        }
        
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/login/login.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding(StandardCharsets.UTF_8.name());

        String id    = trim(req.getParameter("identification"));
        String pw    = nvl(req.getParameter("password"));
        String role  = nvl(req.getParameter("userType"));  // STUDENT/STAFF/GUEST
        
        ResultCode result = userService.loginCheck(id, pw, role);

        switch (result) {
        case LOGIN_SUCCESS:
        	UserDTO user = userService.getUser(id);   // DB에서 role 포함 조회    

        	HttpSession session = req.getSession(true);
            session.setAttribute("LOGIN_USER", user.getIdentification());    
            session.setAttribute("FLASH_MSG",user.getNickname() + "님 환영합니다!");
            resp.sendRedirect(req.getContextPath() + "/main.jsp");
            return;

        case LOGIN_INPUT_EMPTY:
        	HttpSession session1 = req.getSession(true);
        	session1.setAttribute("FLASH_MSG", "아이디/비밀번호를 입력해 주세요");
            resp.sendRedirect(req.getContextPath() + "/login/login.do?code=" + result.getCode()
                    + "&msg=" + urlEnc(result.getMessage()));
            return;

        case LOGIN_FAILED:
        default:
        	HttpSession session2 = req.getSession(true);
        	session2.setAttribute("FLASH_MSG", "아이디, 비밀번호 또는 권한이 올바르지 않습니다");
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