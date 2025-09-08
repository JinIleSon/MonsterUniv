package controller.Coll_engineering;

import java.io.IOException;
<<<<<<< HEAD

=======
import java.util.List;

import dto.Coll_engineeringDTO;
>>>>>>> origin/test
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
<<<<<<< HEAD
=======
import service.Coll_engineeringService;
>>>>>>> origin/test

@WebServlet("/college/college_engineering.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
<<<<<<< HEAD

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
=======
	
	private Coll_engineeringService coll_engineeringService = Coll_engineeringService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Coll_engineeringDTO> dtoList = coll_engineeringService.findAll();
		
		// 현재 사용자 권한 확인
//		HttpSession session = req.getSession();
//		UserDTO sessUser = (UserDTO) session.getAttribute("sessUser");
		
		// 사용자 생성 시 바꾸기
//		String role = sessUser.getUs_role();
		
		// request 공유참조(JSP에서 출력)
		req.setAttribute("dtoList", dtoList);
		
		// 사용자 생성 시 바꾸기
//		req.setAttribute("role", role);
>>>>>>> origin/test
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/college/college_engineering.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
