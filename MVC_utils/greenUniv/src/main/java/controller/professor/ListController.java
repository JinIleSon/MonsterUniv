package controller.professor;

import java.io.IOException;
import java.util.List;

import dto.PagenationDTO;
import dto.ProfessorListDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.Professor_listService;

@WebServlet("/professor/list.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private Professor_listService service = Professor_listService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 요청 페이지 번호 수신
		String pg = req.getParameter("pg");
		
		// 검색 파라미터 수신
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");
		
		// 페이지네이션 처리 요청
		PagenationDTO pagenationDTO = service.getPagenationDTO(pg, searchType, keyword);
		
		// 교수 목록 조회
		int start = pagenationDTO.getStart();
		List<ProfessorListDTO> professorList = null;
		
		if(keyword != null && !keyword.isEmpty()) {
			// 검색 조회
			professorList = service.searchProfessorList(start, searchType, keyword);
		} else {
			// 일반 조회
			professorList = service.professorList(start);
		}
		
		// request 공유참조(JSP 출력)
		req.setAttribute("professorList", professorList);
		req.setAttribute("pagenationDTO", pagenationDTO);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/professor/professorList.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
