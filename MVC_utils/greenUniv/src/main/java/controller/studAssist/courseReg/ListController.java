package controller.studAssist.courseReg;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.PagenationDTO;
import dto.SA_regDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.SA_regService;

@WebServlet("/studAssist/courseReg/list.do")
public class ListController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private SA_regService regService = SA_regService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		
		PagenationDTO pagenationDTO = regService.getPagenationInfo(pg, "openMaj", "컴퓨터과학");
		
		int start = pagenationDTO.getStart();
		logger.debug("start : "+start);
		// 수정 필요 : 로그인 구현과 연동
		List<SA_regDTO> dtoList = regService.findBySearch(start, "openMaj", "컴퓨터과학");
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("pagenationDTO", pagenationDTO);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/studAssist/studAssist_courseReg.jsp");
		dispatcher.forward(req, resp);
	}
}
