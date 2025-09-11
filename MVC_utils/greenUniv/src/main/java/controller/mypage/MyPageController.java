package controller.mypage;

import java.io.IOException;

import dao.MypageDAO;
import dao.UserDAO;
import dto.MypageDTO;
import dto.UserDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/mypage/mypage.do")
public class MyPageController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	 @Override protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	         throws ServletException, IOException {
		// 1) 세션에서 아이디(String)만 읽기  (로그인 코드를 그대로 존중)
	        HttpSession s = req.getSession(false);
	        String identification = null;
	        if (s != null) {
	            Object obj = s.getAttribute("LOGIN_USER"); // ← 로그인 코드가 넣은 문자열
	            if (obj instanceof String) identification = (String) obj;
	        }
	        if (identification == null || identification.isBlank()) {
	            resp.sendRedirect(req.getContextPath() + "/login/login.do");
	            return;
	        }

	        // 2) DB에서 UserDTO 로드
	        UserDAO userDAO = new UserDAO();
	        UserDTO user = userDAO.findById(identification).orElse(null);
	        if (user == null) {
	            // 세션에 남은 아이디가 유효하지 않으면 로그인 페이지로
	            if (s != null) s.removeAttribute("LOGIN_USER");
	            resp.sendRedirect(req.getContextPath() + "/login/login.do");
	            return;
	        }

	        // 3) 마이페이지 데이터 조립
	        MypageDAO myDAO = new MypageDAO();
	        MypageDTO dto = myDAO.loadForUser(user, 5, 5); // 최근 게시글/즐겨찾기 5개

	        // 4) JSP에서 바로 쓰도록 request에 얹기
	        req.setAttribute("user", user); // 프로필 박스에서 사용
	        req.setAttribute("mypage", dto);
	        req.setAttribute("favCount", dto.getFavCount());
	        req.setAttribute("postCount", dto.getPostCount());
	        req.setAttribute("commentCount", dto.getCommentCount());
	        req.setAttribute("myPosts", dto.getMyPosts());
	        req.setAttribute("myFavorites", dto.getMyFavorites());

	        req.getRequestDispatcher("/WEB-INF/views/mypage/mypage.jsp").forward(req, resp);
	 }

	 @Override protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	         throws ServletException, IOException {
	     doGet(req, resp);
	 }
}
