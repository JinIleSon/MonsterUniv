package controller.AMS;

import java.io.IOException;
import java.util.List;

import dto.AMS_lectureDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AMS_LectureService;

@WebServlet("/AMS/AMS_lectureList_search.do")
public class AMS_lectureList_searchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AMS_LectureService lectureService = AMS_LectureService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");

		PagenationDTO pagenationDTO = lectureService.getPagenationDTO(pg, searchType, keyword);

		int start = pagenationDTO.getStart();
		List<AMS_lectureDTO> dtoList = lectureService.findAllSearch(start, searchType, keyword);

		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/AMS_lectureList_search.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
