package controller.academicManagementSystem;

import java.io.IOException;

import dto.LectureDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.LectureService;

@WebServlet("/academicManagementSystem/AMS_lectureRegist.do")
public class academicManagementSystem_lectureRegistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LectureService lectureService = LectureService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/academicManagementSystem/AMS_lectureRegist.jsp");
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

		LectureDTO lectureDTO = new LectureDTO(); //과목코드에서  학과코드는 아직 / 연도는 date의 year 4자리/ 학기는 3~6 = 1, 9~12를 2 / 순번은 db쌓인순서로 생각
		lectureDTO.setDeptcode(deptcode);
		lectureDTO.setOpencol(openCol);
		lectureDTO.setOpenmaj(openMaj);
		lectureDTO.setYear(year);
		lectureDTO.setSemester(semester);
		lectureDTO.setGrade(grade);
		lectureDTO.setCompdiv(compDiv);
		lectureDTO.setProf(prof);
		lectureDTO.setLname(lname);
		lectureDTO.setLexpl(lexpl);
		lectureDTO.setYclass(yclass);
		lectureDTO.setYclase(yclase);
		lectureDTO.setTimes(times);
		lectureDTO.setTimee(timee);
		lectureDTO.setTimed(timed);
		lectureDTO.setEvaway(evaway);
		lectureDTO.setBook(book);
		lectureDTO.setRoom(room);
		lectureDTO.setMaxnum(maxnum);
		
		lectureService.register(lectureDTO);
		
		resp.sendRedirect("/greenUniv/academicManagementSystem/AMS_lectureList.do");
	}
}
