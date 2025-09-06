package controller.Commu_emp;

import java.io.IOException;
import java.util.List;

import dto.Commu_empDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.Commu_empService;

@WebServlet("/community/comm_emp_search.do")
public class SearchListController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private Commu_empService commu_empService = Commu_empService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");
		
	
		PagenationDTO pagenationDTO = commu_empService.getPagenationDTO(pg, searchType, keyword);
		
		int start = pagenationDTO.getStart();
		List<Commu_empDTO> dtoList = commu_empService.findAllSearch(start, searchType, keyword);
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);
				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/comm_emp_searchList.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
