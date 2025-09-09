package controller.AMS;

import java.io.IOException;

import dto.AMS_studentDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AMS_StudentService;

@WebServlet("/AMS/AMS_studentRegist.do") //학생 등록 student테이블 사용
public class AMS_studentRegistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AMS_StudentService studentService =  AMS_StudentService.INSTANCE;
	
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
		
		AMS_studentDTO  studentDTO = new AMS_studentDTO();
		studentDTO.setSnum(snum);
		studentDTO.setSregno(sregno);
		studentDTO.setSname(sname);
		studentDTO.setSengname(sengname);
		studentDTO.setSgender(sgender);
		studentDTO.setSnation(snation);
		studentDTO.setStel(stel);
		studentDTO.setSemail(semail);
		studentDTO.setSzip(szip);
		studentDTO.setSaddr1(saddr1);
		studentDTO.setSaddr2(saddr2);
		studentDTO.setEyear(eyear);
		studentDTO.setGyear(gyear);
		studentDTO.setEsort(esort);
		studentDTO.setEcol(ecol);
		studentDTO.setEdept(edept);
		studentDTO.setEgrade(egrade);
		studentDTO.setEterm(eterm);
		studentDTO.setAdvprof(advprof);
		
		System.out.println("test: " + studentDTO);
		
		//studentService.register(studentDTO);
		//resp.sendRedirect("/greenUniv/AMS/AMS_studentList.do");
	}
}
