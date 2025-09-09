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

@WebServlet("/AMS/AMS_course.do")
public class AMS_courseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
<<<<<<< HEAD
	private AMS_LectureService lectureService = AMS_LectureService.INSTANCE;

=======
	private AMS_CourseService lectureService = AMS_CourseService.INSTANCE;
	
>>>>>>> 6561f2c7f8ec4f6dfbee052a4bbabca5bf0e32a6
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");

		PagenationDTO pagenationDTO = lectureService.getPagenationDTO(pg, null, null);

		int start = pagenationDTO.getStart();
<<<<<<< HEAD
		List<AMS_lectureDTO> dtoList = lectureService.findAll(start);

=======
		List<AMS_courseDTO> dtoList = lectureService.findAll(start);
		
>>>>>>> 6561f2c7f8ec4f6dfbee052a4bbabca5bf0e32a6
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("pagenationDTO", pagenationDTO);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/AMS_course.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
