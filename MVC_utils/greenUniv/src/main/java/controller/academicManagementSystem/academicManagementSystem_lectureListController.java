package controller.academicManagementSystem;

import java.io.IOException;
import java.util.List;

import dto.LectureDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.LectureService;

@WebServlet("/academicManagementSystem/AMS_lectureList.do")
public class academicManagementSystem_lectureListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LectureService lectureService = LectureService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		
		PagenationDTO pagenationDTO = lectureService.getPagenationDTO(pg, null, null);
		
		int start = pagenationDTO.getStart();
		List<LectureDTO> dtoList = lectureService.findAll(start);
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("pagenationDTO", pagenationDTO);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/academicManagementSystem/academic management system_lectureList.jsp");
		dispatcher.forward(req, resp);	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
