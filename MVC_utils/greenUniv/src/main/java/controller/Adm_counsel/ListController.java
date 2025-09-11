package controller.Adm_counsel;

import java.io.IOException;
import java.util.List;

import dto.Adm_counselDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.Adm_counselService;

@WebServlet("/admissionGuide/admissionGuide_counsel.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private Adm_counselService adm_counselService = Adm_counselService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 요청 페이지 번호 수신
		String pg = req.getParameter("pg");

		// 페이지네이션 처리 요청
		PagenationDTO pagenationDTO = adm_counselService.getPagenationDTO(pg, null, null);

		// 글 목록 조회
		int start = pagenationDTO.getStart();
		List<Adm_counselDTO> dtoList = adm_counselService.findAll(start);

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
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admissionGuide/admissionGuide_counsel.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
