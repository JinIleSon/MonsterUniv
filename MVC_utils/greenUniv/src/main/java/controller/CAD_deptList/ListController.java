package controller.CAD_deptList;

import java.io.IOException;
import java.util.List;

import dto.CAD_deptListDTO;
import dto.CAD_pagenationDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.CAD_deptListService;

@WebServlet("/collegeAndDepartment/list.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private CAD_deptListService service = CAD_deptListService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 요청 페이지 번호 수신
		String pg = req.getParameter("pg");
		
		// 검색 파라미터 수신
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");
		
		// 페이지네이션 처리 요청
		CAD_pagenationDTO pagenationDTO = service.getPagenationDTO(pg, searchType, keyword);
		
		// 학과 목록 조회
		int start = pagenationDTO.getStart();
		List<CAD_deptListDTO> deptList = null;
		
		if(keyword != null && !keyword.isEmpty()) {
			// 검색 조회
			deptList = service.searchDeptList(start, searchType, keyword);
		} else {
			// 일반 조회
			deptList = service.deptList(start);
		}
		
		// request 공유참조(JSP 출력)
		req.setAttribute("deptList", deptList);
		req.setAttribute("pagenationDTO", pagenationDTO);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/collegeAndDepartment/collegeAndDepartment_departmentList.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
