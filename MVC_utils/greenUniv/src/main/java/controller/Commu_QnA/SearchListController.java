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

@WebServlet("/community/comm_QnA_search.do")
public class SearchListController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private Commu_QnAService commu_QnAService = Commu_QnAService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");


		PagenationDTO pagenationDTO = commu_QnAService.getPagenationDTO(pg, searchType, keyword);

		int start = pagenationDTO.getStart();
		List<Commu_QnADTO> dtoList = commu_QnAService.findAllSearch(start, searchType, keyword);

		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/comm_QnA_searchList.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
