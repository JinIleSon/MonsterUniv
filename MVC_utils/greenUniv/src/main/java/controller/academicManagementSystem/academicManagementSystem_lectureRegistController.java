package controller.academicManagementSystem;

import java.io.IOException;

import dto.LectureDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/academicManagementSystem/AMS_lectureRegist.do")
public class academicManagementSystem_lectureRegistController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/academicManagementSystem/academic management system_lectureRegist.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String openCol = req.getParameter("openCol");
		String openMaj = req.getParameter("openMaj");
		String year = req.getParameter("year");
		String semester = req.getParameter("semester");
		String grade = req.getParameter("grade");
		String compDiv = req.getParameter("compDiv");
		String prof = req.getParameter("prof");
		String lname = req.getParameter("lname");
		String lexpl = req.getParameter("lexpl");
		String yclass = req.getParameter("yclass");
		String yclase = req.getParameter("yclase");
		String times = req.getParameter("times");
		String timee = req.getParameter("timee");
		String timed = req.getParameter("timed");
		String evaway = req.getParameter("evaway");
		String book = req.getParameter("book");
		String room = req.getParameter("room");
		String maxnum = req.getParameter("maxnum");
		
		LectureDTO lectureDTO = new LectureDTO();
		lectureDTO.setOpencol(openCol);
		lectureDTO.setOpenmaj(openMaj);
		lectureDTO.setYear(year);
		lectureDTO.setSemester(semester);
		lectureDTO.setGrade(grade);
		lectureDTO.setCompdiv(compDiv);
		resp.sendRedirect("/greenUniv/academicManagementSystem/AMS_lectureList.do");
	}
}
