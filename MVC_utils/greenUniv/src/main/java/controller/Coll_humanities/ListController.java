package controller.Coll_humanities;

import java.io.IOException;
import java.util.List;

import dto.Coll_humanitiesDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.Coll_humanitiesService;

@WebServlet("/college/college_humanities.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private Coll_humanitiesService coll_humanitiesService = Coll_humanitiesService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		List<Coll_humanitiesDTO> dtoList = coll_humanitiesService.findAll();

		// 현재 사용자 권한 확인
//		HttpSession session = req.getSession();
//		UserDTO sessUser = (UserDTO) session.getAttribute("sessUser");

		// 사용자 생성 시 바꾸기
//		String role = sessUser.getUs_role();

		// request 공유참조(JSP에서 출력)
		req.setAttribute("dtoList", dtoList);

		// 사용자 생성 시 바꾸기
//		req.setAttribute("role", role);


		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/college/college_humanities.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
