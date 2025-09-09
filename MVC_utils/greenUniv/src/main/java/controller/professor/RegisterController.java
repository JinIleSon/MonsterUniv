package controller.professor;

import java.io.IOException;

import dto.ProfessorRegisterDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.Professor_registerService;

@WebServlet("/professor/register.do")
public class RegisterController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private Professor_registerService service = Professor_registerService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/professor/professorRegist.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pregno     = req.getParameter("pregno");
		String pname      = req.getParameter("pname");
		String pengname   = req.getParameter("pengname");
		String pgender    = req.getParameter("pgender");
		String pnation    = req.getParameter("pnation");
		String ptel       = req.getParameter("ptel");
		String pemail     = req.getParameter("pemail");
		String pzip       = req.getParameter("pzip");
		String paddr1     = req.getParameter("paddr1");
		String paddr2     = req.getParameter("paddr2");
		String gradun     = req.getParameter("gradun");
		String major      = req.getParameter("major");
		String graddate   = req.getParameter("graddate");
		String degree     = req.getParameter("degree");
		String takecol    = req.getParameter("takecol");
		String takedept   = req.getParameter("takedept");
		String appdate    = req.getParameter("appdate");
		
		ProfessorRegisterDTO dto = new ProfessorRegisterDTO();
		
		dto.setPregno(pregno);                         
		dto.setPname(pname);                          
		dto.setPengname(pengname);                                                     
		dto.setPgender(pgender);                                                      
		dto.setPnation(pnation);                                                      
		dto.setPtel(ptel);                                                         
		dto.setPemail(pemail);                                                       
		dto.setPzip(pzip);
		dto.setPaddr1(paddr1);                                                       
		dto.setPaddr2(paddr2);                                                       
		dto.setGradun(gradun);                                                       
		dto.setMajor(major);                                                        
		dto.setGraddate(graddate);                                                     
		dto.setDegree(degree);                                                       
		dto.setTakecol(takecol);                                                      
		dto.setTakedept(takedept);                                                     
		dto.setAppdate(appdate);                                                      
		
		System.out.println("@@@@@@@@@@@@@@@@@@ : " + dto.toString());
		
		service.register(dto);
		
		resp.sendRedirect("/greenUniv/professor/register.do");
	}
}
