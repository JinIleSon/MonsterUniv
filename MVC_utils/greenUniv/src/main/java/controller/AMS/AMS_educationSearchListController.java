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
import service.AMS_EducationService;

@WebServlet("/AMS/AMS_educationOperation/search.do")
public class AMS_educationSearchListController extends HttpServlet {

	private static final long serialVersionUID = 1L;
<<<<<<< HEAD

	private Logger logger = LoggerFactory.getLogger(this.getClass());

=======
	
>>>>>>> 6561f2c7f8ec4f6dfbee052a4bbabca5bf0e32a6
	private AMS_EducationService lectureService = AMS_EducationService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");
		String pg = req.getParameter("pg");
		// 페이지네이션 처리 요청
		PagenationDTO pagenationDTO = lectureService.getPagenationInfo(pg, searchType, keyword);

		int start = pagenationDTO.getStart();
		if(searchType == null) {
			List<AMS_lectureDTO> dtoList = lectureService.findAll(start);
			req.setAttribute("dtoList", dtoList);
			req.setAttribute("pagenationDTO", pagenationDTO);

			RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/AMS_educationOperation.jsp");
			dispatcher.forward(req, resp);
			return;
		}
		List<AMS_lectureDTO> dtoList = lectureService.findBySearch(start, searchType, keyword);

		req.setAttribute("dtoList", dtoList);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("pagenationDTO", pagenationDTO);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/AMS/AMS_educationOperation_search.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
