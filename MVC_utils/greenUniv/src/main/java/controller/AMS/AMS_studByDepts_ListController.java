package controller.AMS;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.AMS_studentDTO;
import dto.PagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AMS_studByDeptService;

@WebServlet("/AMS/AMS_studByDepts.do")
public class AMS_studByDepts_ListController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private AMS_studByDeptService ams_studByDeptService = AMS_studByDeptService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pg = req.getParameter("pg");
		
		PagenationDTO pagenationDTO = ams_studByDeptService.getPagenationDTO(pg, null, null, "국어국문학과");
		
		List<AMS_studentDTO> dtoList = ams_studByDeptService.findAllWithDept(pagenationDTO.getStart(), "국어국문학과");
		
		req.setAttribute("dtoList", dtoList);
		req.setAttribute("pagenationDTO", pagenationDTO);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/AMS_studByDepts.jsp");
		dispatcher.forward(req, resp);
	}
}
