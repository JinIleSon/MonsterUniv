package controller.studAssist.courseRegDetail;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.SA_detailsDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.SA_detailsService;

@WebServlet("/studAssist/courseRegDetails/search.do")
public class SearchListController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	private SA_detailsService detailsService = SA_detailsService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String snum = req.getParameter("snum");
		// 로그인 정보에서 가져옴.
		String year = req.getParameter("year");
		String semester = req.getParameter("semester");

		List<SA_detailsDTO> dtoList = detailsService.findAllWithKeywords(201001, year, semester);

		req.setAttribute("dtoList", dtoList);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/studAssist/studAssist_courseRegDetails_search.jsp");
		dispatcher.forward(req, resp);
	}
}
