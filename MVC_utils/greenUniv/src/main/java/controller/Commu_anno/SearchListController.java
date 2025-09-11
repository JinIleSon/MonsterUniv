package controller.Commu_anno;

import java.io.IOException;
import java.util.List;

import dto.Commu_annoDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.Commu_annoService;

@WebServlet("/community/comm_anno_search.do")
public class SearchListController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private Commu_annoService commu_annoService = Commu_annoService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");


		PagenationDTO pagenationDTO = commu_annoService.getPagenationDTO(pg, searchType, keyword);

		int start = pagenationDTO.getStart();
		List<Commu_annoDTO> dtoList = commu_annoService.findAllSearch(start, searchType, keyword);

		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/comm_anno_searchList.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
