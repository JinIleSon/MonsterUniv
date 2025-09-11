package controller.AMS;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AMS_studentDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AMS_studByGradeService;

@WebServlet("/AMS/AMS_studByGrades_search.do")
public class AMS_studByGrades_SearchListController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private AMS_studByGradeService ams_studByGradeService = AMS_studByGradeService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		String egrade = req.getParameter("egrade");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");
		
		PagenationDTO pagenationDTO = ams_studByGradeService.getPagenationDTO(pg, searchType, keyword, egrade);
		
		List<AMS_studentDTO> dtoList = null;
		if(searchType == null || keyword == null)
			dtoList = ams_studByGradeService.findAllWithGrade(pagenationDTO.getStart(), egrade);
		else
			dtoList = ams_studByGradeService.findSearchWithGrade(pagenationDTO.getStart(), egrade, searchType, keyword);
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("pagenationDTO", pagenationDTO);
		req.setAttribute("egrade", egrade);
		if(searchType != null) {
			req.setAttribute("searchType", searchType);
			req.setAttribute("keyword", keyword);
		}
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/AMS_studByGrades_search.jsp");
		dispatcher.forward(req, resp);
	}
}
