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

@WebServlet("/AMS/AMS_studByGrades.do")
public class AMS_studByGrades_ListController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private AMS_studByGradeService ams_studByGradeService = AMS_studByGradeService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		
		PagenationDTO pagenationDTO = ams_studByGradeService.getPagenationDTO(pg, null, null, "1학년");
		
		List<AMS_studentDTO> dtoList = ams_studByGradeService.findAllWithGrade(pagenationDTO.getStart(), "1학년");
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("pagenationDTO", pagenationDTO);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/AMS_studByGrades.jsp");
		dispatcher.forward(req, resp);
	}
}
