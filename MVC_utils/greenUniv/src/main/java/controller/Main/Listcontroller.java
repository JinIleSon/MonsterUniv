package controller.main;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AA_noticeDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.Main_acadAffairsService;

@WebServlet("/main.do")
public class Listcontroller extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private Main_acadAffairsService affairsService = Main_acadAffairsService.INSATCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<AA_noticeDTO> AA_noticeList = affairsService.findRecentThree();
		
		req.setAttribute("noticeList", AA_noticeList);
		logger.debug(AA_noticeList.toString());
		
		req.getRequestDispatcher("/main.jsp").forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
