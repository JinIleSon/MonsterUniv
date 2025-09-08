package controller.studAssist.courseReg;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.SA_regDTO;
<<<<<<< HEAD
import jakarta.servlet.RequestDispatcher;
=======
>>>>>>> origin/test
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
<<<<<<< HEAD
=======
//import jakarta.servlet.http.HttpSession;
>>>>>>> origin/test
import service.SA_regService;

@WebServlet("/studAssist/courseReg/register.do")
public class RegisterController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private SA_regService regService = SA_regService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String deptCode = req.getParameter("deptCode");
		
<<<<<<< HEAD
//		SA_regDTO dto = regService.findByCode(deptCode);
=======
		SA_regDTO dto = regService.findByCode(deptCode);
		// 로그인 정보에서 학번 가져오기(임시번호 201001)
//		HttpSession sessUser = req.getSession();
		
		logger.debug("registerController\n"+deptCode);
		regService.registerToDetail(201001, dto);
>>>>>>> origin/test
		
		resp.sendRedirect("/greenUniv/studAssist/courseReg/list.do");
	}
}
