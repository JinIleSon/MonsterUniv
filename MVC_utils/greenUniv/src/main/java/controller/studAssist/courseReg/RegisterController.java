package controller.studAssist.courseReg;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.SA_regDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
import service.SA_regService;

@WebServlet("/studAssist/courseReg/register.do")
public class RegisterController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private SA_regService regService = SA_regService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String deptCode = req.getParameter("deptCode");
		
		SA_regDTO dto = regService.findByCode(deptCode);
		// 로그인 정보에서 학번 가져오기(임시번호 201001)
//		HttpSession sessUser = req.getSession();
		
		regService.registerToDetail(201001, dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/greenUniv/studAssist/courseReg/list.do");
		dispatcher.forward(req, resp);
	}
}
