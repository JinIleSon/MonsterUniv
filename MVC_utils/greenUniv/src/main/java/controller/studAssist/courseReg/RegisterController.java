package controller.studAssist.courseReg;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.SA_regDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
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
		
		regService.registerToDetail(dto);
		
		resp.sendRedirect("/greenUniv/studAssist/courseReg/list.do");
	}
}
