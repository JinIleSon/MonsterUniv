package controller.AMS;

import java.io.IOException;
import java.util.List;

import dto.AMS_mainDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AMS_mainService;

@WebServlet("/AMS/AMS_main.do")
public class AMS_mainListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private AMS_mainService ams_mainService = AMS_mainService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<AMS_mainDTO> dtoList1 = ams_mainService.findAllAA();
		List<AMS_mainDTO> dtoList2 = ams_mainService.findAllAdm();
		List<AMS_mainDTO> dtoList3 = ams_mainService.findAllStuEdept();
		List<AMS_mainDTO> dtoList4 = ams_mainService.findAllStuLeave();
		List<AMS_mainDTO> dtoList5 = ams_mainService.findAllStuIn();
		List<AMS_mainDTO> dtoList6 = ams_mainService.findAllStuEgrade();
		List<AMS_mainDTO> dtoList7 = ams_mainService.findAllStuLeaveEgrade();
		List<AMS_mainDTO> dtoList8 = ams_mainService.findAllStuInEgrade();
		List<AMS_mainDTO> dtoList9 = ams_mainService.findAllRun();
		List<AMS_mainDTO> dtoList10 = ams_mainService.findAllMajor();
		List<AMS_mainDTO> dtoList11 = ams_mainService.findAllLecture();
		List<AMS_mainDTO> dtoList12 = ams_mainService.findAllProf();
		List<AMS_mainDTO> dtoList13 = ams_mainService.findAllAdmin();
		List<AMS_mainDTO> dtoList14 = ams_mainService.findAllStu();
		List<AMS_mainDTO> dtoList15 = ams_mainService.selectAllStudentLeave();
		List<AMS_mainDTO> dtoList16 = ams_mainService.findAllGradSchool();
		List<AMS_mainDTO> dtoList17 = ams_mainService.selectAllGraduation();
		
		// 현재 사용자 권한 확인
//		HttpSession session = req.getSession();
//		UserDTO sessUser = (UserDTO) session.getAttribute("sessUser");
		
		// 사용자 생성 시 바꾸기
//		String role = sessUser.getUs_role();
		
		// request 공유참조(JSP에서 출력)
		req.setAttribute("dtoList1", dtoList1);
		req.setAttribute("dtoList2", dtoList2);
		req.setAttribute("dtoList3", dtoList3);
		req.setAttribute("dtoList4", dtoList4);
		req.setAttribute("dtoList5", dtoList5);
		req.setAttribute("dtoList6", dtoList6);
		req.setAttribute("dtoList7", dtoList7);
		req.setAttribute("dtoList8", dtoList8);
		req.setAttribute("dtoList9", dtoList9);
		req.setAttribute("dtoList10", dtoList10);
		req.setAttribute("dtoList11", dtoList11);
		req.setAttribute("dtoList12", dtoList12);
		req.setAttribute("dtoList13", dtoList13);
		req.setAttribute("dtoList14", dtoList14);
		req.setAttribute("dtoList15", dtoList15);
		req.setAttribute("dtoList16", dtoList16);
		req.setAttribute("dtoList17", dtoList17);
		
		// 사용자 생성 시 바꾸기
//		req.setAttribute("role", role);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/AMS_main.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
