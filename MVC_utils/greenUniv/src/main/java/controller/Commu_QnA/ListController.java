package controller.Commu_QnA;

import java.io.IOException;
import java.util.List;

import dto.Commu_QnADTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.Commu_QnAService;

@WebServlet("/community/community_QnA.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private Commu_QnAService commu_QnAService = Commu_QnAService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 요청 페이지 번호 수신
		String pg = req.getParameter("pg");

		// 페이지네이션 처리 요청
		PagenationDTO pagenationDTO = commu_QnAService.getPagenationDTO(pg, null, null);

		// 글 목록 조회
		int start = pagenationDTO.getStart();
		List<Commu_QnADTO> dtoList = commu_QnAService.findAll(start);

		// 현재 사용자 권한 확인
//		HttpSession session = req.getSession();
//		UserDTO sessUser = (UserDTO) session.getAttribute("sessUser");

		// 사용자 생성 시 바꾸기
//		String role = sessUser.getUs_role();

		// request 공유참조(JSP에서 출력)
		req.setAttribute("dtoList", dtoList);

		// 사용자 생성 시 바꾸기
//		req.setAttribute("role", role);

		req.setAttribute("pagenationDTO", pagenationDTO);


		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/community_QnA.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
