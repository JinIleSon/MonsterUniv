package controller.Commu_refer;

import java.io.IOException;
import java.util.List;

import dto.Commu_referDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.Commu_referService;

@WebServlet("/community/comm_refer_search.do")
public class SearchListController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private Commu_referService commu_referService = Commu_referService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");


		PagenationDTO pagenationDTO = commu_referService.getPagenationDTO(pg, searchType, keyword);

		int start = pagenationDTO.getStart();
		List<Commu_referDTO> dtoList = commu_referService.findAllSearch(start, searchType, keyword);

		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/comm_refer_searchList.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
