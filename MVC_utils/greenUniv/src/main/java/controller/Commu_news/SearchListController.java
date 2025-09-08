package controller.Commu_news;

import java.io.IOException;
import java.util.List;

import dto.Commu_newsDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.Commu_newsService;

@WebServlet("/community/comm_news_search.do")
public class SearchListController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private Commu_newsService commu_newsService = Commu_newsService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");
		
	
		PagenationDTO pagenationDTO = commu_newsService.getPagenationDTO(pg, searchType, keyword);
		
		int start = pagenationDTO.getStart();
		List<Commu_newsDTO> dtoList = commu_newsService.findAllSearch(start, searchType, keyword);
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);
				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/comm_news_searchList.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
