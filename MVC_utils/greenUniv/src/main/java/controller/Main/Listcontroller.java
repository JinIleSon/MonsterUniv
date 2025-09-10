package controller.main;

import java.io.IOException;
import java.util.List;

import dto.AA_noticeDTO;
import dto.Commu_newsDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AA_noticeService;
import service.Commu_newsService;

@WebServlet("/main.do")
public class Listcontroller extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 최근 3개 호출
		AA_noticeService service = AA_noticeService.INSTANCE;
		List<AA_noticeDTO> academicNotices = service.getRecent(3);
		req.setAttribute("academicNotices", academicNotices);
		
		// controller.main.Listcontroller#doGet
		List<Commu_newsDTO> recentNews = Commu_newsService.INSTANCE.getRecent(3);
		req.setAttribute("recentNews", recentNews);

		req.getRequestDispatcher("/main.jsp").forward(req, resp);

		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
