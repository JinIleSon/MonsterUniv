package controller.AMS;

import java.io.IOException;
import java.util.List;

import dto.AMS_studentDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AMS_StudentService;

@WebServlet("/AMS/AMS_studentList_search.do")
public class AMS_studentList_searchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AMS_StudentService studentService = AMS_StudentService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");
		
		PagenationDTO pagenationDTO = studentService.getPagenationDTO(pg, searchType, keyword);
		int start = pagenationDTO.getStart();
		List<AMS_studentDTO> dtoList = studentService.findAllSearch(start, searchType, keyword);
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/AMS_studentList_search.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
