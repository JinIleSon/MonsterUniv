package controller.AMS.educationOperation;

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

@WebServlet("/AMS/educationOperation/list.do")
public class ListController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private LectureService lectureService = LectureService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 요청 페이지 번호 수신
		String pg = req.getParameter("pg");
		
		// 페이지네이션 처리 요청
		PagenationDTO pagenationDTO = lectureService.getPagenationInfo(pg, null, null);
		
		int start = pagenationDTO.getStart();
		logger.debug("start : "+start);
		List<LectureDTO> dtoList = lectureService.findAll(start);
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("pagenationDTO", pagenationDTO);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/educationOperation.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
