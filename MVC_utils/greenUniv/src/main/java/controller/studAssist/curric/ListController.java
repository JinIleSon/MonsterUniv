package controller.studAssist.curric;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.SA_curriculumDTO;
import dto.PagenationDTO;
import dto.SA_detailsDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.SA_curriculumService;
import service.SA_detailsService;

@WebServlet("/studAssist/curric/list.do")
public class ListController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private SA_curriculumService sa_curriculumService = SA_curriculumService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<SA_curriculumDTO> dtoList1 = sa_curriculumService.findAll1("G01940");
		List<SA_curriculumDTO> dtoList2 = sa_curriculumService.findAll2("G01940");
		List<SA_curriculumDTO> dtoList3 = sa_curriculumService.findAll3("G01940");
		List<SA_curriculumDTO> dtoList4 = sa_curriculumService.findAll4("G01940");
		List<SA_curriculumDTO> dtoList5 = sa_curriculumService.findAllCommon("G01940");
		
		// 현재 사용자 권한 확인
//		HttpSession session = req.getSession();
//		UserDTO sessUser = (UserDTO) session.getAttribute("sessUser");
		
		// 사용자 생성 시 바꾸기
//		String role = sessUser.getUs_role();
		
		// 사용자 생성 시 바꾸기
//		req.setAttribute("role", role);
		
		req.setAttribute("dtoList1", dtoList1);
		req.setAttribute("dtoList2", dtoList2);
		req.setAttribute("dtoList3", dtoList3);
		req.setAttribute("dtoList4", dtoList4);
		req.setAttribute("dtoList5", dtoList5);
		
		req.setAttribute("dtoList1Size", dtoList1.size());
		req.setAttribute("dtoList2Size", dtoList2.size());
		req.setAttribute("dtoList3Size", dtoList3.size());
		req.setAttribute("dtoList4Size", dtoList4.size());
		req.setAttribute("dtoList5Size", dtoList5.size());
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/studAssist/studAssist_curric.jsp");
		dispatcher.forward(req, resp);
	}
}
