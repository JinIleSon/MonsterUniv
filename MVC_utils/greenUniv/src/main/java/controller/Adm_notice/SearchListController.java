package controller.Adm_notice;

import java.io.IOException;
import java.util.List;

import dto.Adm_noticeDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.Adm_noticeService;

@WebServlet("/admissionGuide/admissionGuide_notice_search.do")
public class SearchListController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private Adm_noticeService adm_noticeService = Adm_noticeService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");


		PagenationDTO pagenationDTO = adm_noticeService.getPagenationDTO(pg, searchType, keyword);

		int start = pagenationDTO.getStart();
		List<Adm_noticeDTO> dtoList = adm_noticeService.findAllSearch(start, searchType, keyword);

		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admissionGuide/admissionGuide_notice_searchList.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
