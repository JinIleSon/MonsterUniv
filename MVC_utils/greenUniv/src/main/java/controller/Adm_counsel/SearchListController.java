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

@WebServlet("/admissionGuide/admissionGuide_counsel_search.do")
public class SearchListController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private Adm_counselService adm_counselService = Adm_counselService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");


		PagenationDTO pagenationDTO = adm_counselService.getPagenationDTO(pg, searchType, keyword);

		int start = pagenationDTO.getStart();
		List<Adm_counselDTO> dtoList = adm_counselService.findAllSearch(start, searchType, keyword);

		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admissionGuide/admissionGuide_counsel_searchList.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
