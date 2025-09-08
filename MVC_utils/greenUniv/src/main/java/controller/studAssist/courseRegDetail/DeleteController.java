package controller.studAssist.courseRegDetail;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.SA_detailsService;

@WebServlet("/studAssist/courseRegDetails/delete.do")
public class DeleteController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private SA_detailsService detailsService = SA_detailsService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String deptCode = req.getParameter("deptCode");
		// 로그인 세션에서 학생코드 가져옴(임시번호: 201001)
		
		detailsService.cancel(201001, deptCode);
		
		resp.sendRedirect("/greenUniv/studAssist/courseRegDetails/list.do");
	}
}
