package controller.CAD_deptList;

import java.io.IOException;
import java.util.List;

import dto.CAD_deptListDTO;
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
		
		List<CAD_deptListDTO> deptList = service.deptList();
		req.setAttribute("deptList", deptList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/collegeAndDepartment/collegeAndDepartment_departmentList.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
