package controller.AMS;

import java.io.IOException;

import dto.AMS_lectureDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AMS_LectureService;

@WebServlet("/AMS/AMS_lectureRegist.do")
public class AMS_lectureRegistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AMS_LectureService lectureService = AMS_LectureService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/AMS_lectureRegist.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String deptcode = req.getParameter("deptcode");
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
		String times = "2025-09-01 " + req.getParameter("times");
		String timee = "2025-12-24 " + req.getParameter("timee");
		
		//요일
		String[] timedArr = req.getParameterValues("timed");
		String timed = "";
	    if (timedArr != null && timedArr.length > 0) {
	        timed = String.join(",", timedArr);
	    }
		
		String evaway = req.getParameter("evaway");
		String book = req.getParameter("book");
		String room = req.getParameter("room");
		String maxnum = req.getParameter("maxnum");

		AMS_lectureDTO lectureDTO = new AMS_lectureDTO();
		lectureDTO.setDeptCode(deptcode);
		lectureDTO.setOpenCol(openCol);
		lectureDTO.setOpenMaj(openMaj);
		lectureDTO.setYear(year);
		lectureDTO.setSemester(semester);
		lectureDTO.setGrade(grade);
		lectureDTO.setCompDiv(compDiv);
		lectureDTO.setProf(prof);
		lectureDTO.setLname(lname);
		lectureDTO.setLexpl(lexpl);
		lectureDTO.setYclasS(yclass);
		lectureDTO.setYclasE(yclase);
		lectureDTO.setTimeS(times);
		lectureDTO.setTimeE(timee);
		lectureDTO.setTimeD(timed);
		lectureDTO.setEvaWay(evaway);
		lectureDTO.setBook(book);
		lectureDTO.setRoom(room);
		lectureDTO.setMaxNum(maxnum);
		
		lectureService.register(lectureDTO);
		
		resp.sendRedirect("/greenUniv/AMS/AMS_lectureList.do");
	}
}
