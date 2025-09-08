package controller.AMS;

import java.io.IOException;
import java.util.List;

import dto.AMS_lectureDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AMS_LectureService;

@WebServlet("/AMS/AMS_lectureList.do")
public class AMS_lectureListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AMS_LectureService lectureService = AMS_LectureService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		
		PagenationDTO pagenationDTO = lectureService.getPagenationDTO(pg, null, null);
		
		int start = pagenationDTO.getStart();
		List<AMS_lectureDTO> dtoList = lectureService.findAll(start);
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("pagenationDTO", pagenationDTO);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/AMS_lectureList.jsp");
		dispatcher.forward(req, resp);	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
