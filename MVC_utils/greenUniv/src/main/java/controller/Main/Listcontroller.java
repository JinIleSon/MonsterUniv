package controller.main;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AA_noticeDTO;
import dto.Commu_annoDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AA_noticeService;
import service.Commu_annoService;

@WebServlet("/main.do")
public class Listcontroller extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private AA_noticeService noticeService = AA_noticeService.INSTANCE;
	private Commu_annoService annoService = Commu_annoService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<AA_noticeDTO> noticeList = noticeService.findAllThree();
		List<Commu_annoDTO> annoList = annoService.findAllThree();
		
		req.setAttribute("noticeList", noticeList);
		req.setAttribute("annoList", annoList);
		logger.debug(noticeList.toString());
		logger.debug(annoList.toString());
		
		req.getRequestDispatcher("/main.jsp").forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
