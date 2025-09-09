package controller.AMS;

import java.io.IOException;
import java.util.List;

import dto.AMS_courseDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AMS_CourseService;

@WebServlet("/AMS/AMS_course_search.do")
public class AMS_course_searchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
<<<<<<< HEAD
	private AMS_LectureService lectureService = AMS_LectureService.INSTANCE;

=======
	private AMS_CourseService lectureService = AMS_CourseService.INSTANCE;
	
>>>>>>> 6561f2c7f8ec4f6dfbee052a4bbabca5bf0e32a6
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");

		PagenationDTO pagenationDTO = lectureService.getPagenationDTO(pg, searchType, keyword);

		int start = pagenationDTO.getStart();
<<<<<<< HEAD
		List<AMS_lectureDTO> dtoList = lectureService.findAllSearch(start, searchType, keyword);

=======
		List<AMS_courseDTO> dtoList = lectureService.findAllSearch(start, searchType, keyword);
		
>>>>>>> 6561f2c7f8ec4f6dfbee052a4bbabca5bf0e32a6
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/AMS_course_search.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
