package controller.AMS;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AMS/AMS_studentRegist.do") //학생 등록 student테이블 사용
public class AMS_studentRegistController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/AMS_studentRegist.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String snum = req.getParameter("snum");
		String sregno = req.getParameter("sregno");
		String sname = req.getParameter("sname");
		String sengname = req.getParameter("sengname");
		String sgender = req.getParameter("sgender");
		String snation = req.getParameter("snation");
		String stel = req.getParameter("stel");
		String semail = req.getParameter("semail");
		String szip = req.getParameter("szip");
		String saddr1 = req.getParameter("saddr1");
		String saddr2 = req.getParameter("saddr2");
		String eyear = req.getParameter("eyear");
		String gyear = req.getParameter("gyear");
		String esort = req.getParameter("esort");
		String ecol = req.getParameter("ecol");
		String edept = req.getParameter("edept");
		String egrade = req.getParameter("egrade");
		String eterm = req.getParameter("eterm");
		String advprof = req.getParameter("advprof");
		
		//AMS_studentDTO  studentDTO = new AMS_studentDTO(); //다른 dto확인
		
		//resp.sendRedirect("/greenUniv/AMS/AMS_studentList.do");
	}
}
