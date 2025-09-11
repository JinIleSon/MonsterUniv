package controller.CAD_Register;

import java.io.IOException;
import java.util.List;

import dto.CAD_collegeDTO;
import dto.CAD_deptDTO;
import dto.FileDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.CAD_registerSrevice;

@WebServlet("/collegeAndDepartment/register.do")
public class RegisterController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private CAD_registerSrevice service = CAD_registerSrevice.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		List<String> deptList = service.getDeptName();
		req.setAttribute("deptList", deptList);

		RequestDispatcher dispatcher=  req.getRequestDispatcher("/WEB-INF/views/collegeAndDepartment/collegeAndDepartment_register.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String formType = req.getParameter("formType");

		if(formType.equals("college")) {
			
			FileDTO fileDTO = service.fileUpload(req);
			
			String colname = req.getParameter("colname");
			String coleng = req.getParameter("coleng");
			String coltit = req.getParameter("coltit");
			String colcont = req.getParameter("colcont");
			String colimgo = fileDTO.getColimgo();
			String colimgs = fileDTO.getColimgs();
			
			CAD_collegeDTO dto = new CAD_collegeDTO();

			dto.setColname(colname);
			dto.setColeng(coleng);
			dto.setColtit(coltit);
			dto.setColcont(colcont);
			dto.setColimgo(colimgo);
			dto.setColimgs(colimgs);
			
			service.collRegister(dto);

		}else if(formType.equals("dept")) {
			String unitcol = req.getParameter("unitcol");
			String deptname = req.getParameter("deptname");
			String engname = req.getParameter("engname");
			String estyear = req.getParameter("estyear");
			String dean = req.getParameter("dean");
			String depttel = req.getParameter("depttel");
			String deptoff = req.getParameter("deptoff");

			CAD_deptDTO dto = new CAD_deptDTO();
			dto.setUnitcol(unitcol);
			dto.setDeptname(deptname);
			dto.setEngname(engname);
			dto.setEstyear(estyear);
			dto.setDean(dean);
			dto.setDepttel(depttel);
			dto.setDeptoff(deptoff);

			service.deptRegister(dto);
		}



		resp.sendRedirect("/greenUniv/collegeAndDepartment/register.do");
	}

}
