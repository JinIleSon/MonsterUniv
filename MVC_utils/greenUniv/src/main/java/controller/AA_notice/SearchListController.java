package controller.AA_notice;

import java.io.IOException;
import java.util.List;

import dto.AA_noticeDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AA_noticeService;

@WebServlet("/academicAffairs/academicAffairs_notice_search.do")
public class SearchListController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private AA_noticeService aa_noticeService = AA_noticeService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");
		
	
		PagenationDTO pagenationDTO = aa_noticeService.getPagenationDTO(pg, searchType, keyword);
		
		int start = pagenationDTO.getStart();
		List<AA_noticeDTO> dtoList = aa_noticeService.findAllSearch(start, searchType, keyword);
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);
				
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/academicAffairs/academicAffairs_notice_searchList.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
