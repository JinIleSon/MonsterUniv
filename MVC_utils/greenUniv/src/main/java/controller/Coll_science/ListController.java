package controller.Coll_science;

import java.io.IOException;
<<<<<<< HEAD

=======
import java.util.List;

import dto.Coll_scienceDTO;
import dto.PagenationDTO;
import dto.UserDTO;
>>>>>>> origin/test
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
<<<<<<< HEAD
=======
import jakarta.servlet.http.HttpSession;
import service.Coll_scienceService;
>>>>>>> origin/test

@WebServlet("/college/college_science.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;

<<<<<<< HEAD
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
=======
	private Coll_scienceService coll_scienceService = Coll_scienceService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Coll_scienceDTO> dtoList = coll_scienceService.findAll();
		
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
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/college/college_science.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
