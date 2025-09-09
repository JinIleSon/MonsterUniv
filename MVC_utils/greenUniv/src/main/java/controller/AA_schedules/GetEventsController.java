package controller.AA_schedules;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.Gson;

import dto.AA_schedulesDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AA_schedulesService;

@WebServlet("/AA_schedules/getEvents.do")
public class GetEventsController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private AA_schedulesService aa_schedulesService = AA_schedulesService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		List<AA_schedulesDTO> dtoList = aa_schedulesService.findAllEvents();
		
		Gson gson = new Gson();
		String strJson = gson.toJson(dtoList);
		
		resp.setContentType("application/json; charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		out.print(strJson);
	}
}
