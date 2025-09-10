package controller.studAssist.chkGrades;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.SA_gradeDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.SA_gradeService;

@WebServlet("/studAssist/chkGrades/search.do")
public class SearchListController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	private SA_gradeService gradeService = SA_gradeService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String year = req.getParameter("year");
		String semester = req.getParameter("semester");
		
		// 로그인 정보에서 학번 들고오기(임시번호 : 201001)
		List<SA_gradeDTO> dtoList = gradeService.findAllWithSnumYearSeme(201001, year, semester);
		int subNum = gradeService.countSubNum(201001, year, semester);
		int gradeSum = gradeService.getGradeSum(201001, year, semester);
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("subNum", subNum);
		req.setAttribute("gradeSum", gradeSum);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/studAssist/studAssist_chkGrades_search.jsp");
		dispatcher.forward(req, resp);
	}
}
