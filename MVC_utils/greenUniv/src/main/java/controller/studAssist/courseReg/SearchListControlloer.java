package controller.studAssist.courseReg;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AMS.LectureDTO;
import dto.AMS.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AMS.LectureService;

@WebServlet("/studAssist/courseReg/search.do")
public class SearchListControlloer extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private LectureService lectureService = LectureService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");
		String pg = req.getParameter("pg");
		// 페이지네이션 처리 요청
		PagenationDTO pagenationDTO = lectureService.getPagenationInfo(pg, searchType, keyword);

		int start = pagenationDTO.getStart();
		if(searchType == null) {
			List<LectureDTO> dtoList = lectureService.findAll(start);
			req.setAttribute("dtoList", dtoList);
			req.setAttribute("pagenationDTO", pagenationDTO);
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/educationOperation.jsp");
			dispatcher.forward(req, resp);
			return;
		}
		List<LectureDTO> dtoList = lectureService.findBySearch(start, searchType, keyword);
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/studAssist/studAssist_courseReg_search.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
