package controller.Commu_free;

import java.io.IOException;
import java.util.List;

import dto.Commu_freeDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.Commu_freeService;

@WebServlet("/community/comm_free_search.do")
public class SearchListController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private Commu_freeService commu_freeService = Commu_freeService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");


		PagenationDTO pagenationDTO = commu_freeService.getPagenationDTO(pg, searchType, keyword);

		int start = pagenationDTO.getStart();
		List<Commu_freeDTO> dtoList = commu_freeService.findAllSearch(start, searchType, keyword);

		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/comm_free_searchList.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
