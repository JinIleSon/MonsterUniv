package controller.Main;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

///main/curriculum.do 로 매핑
@WebServlet("/main/curriculum.do")
public class CurriculumController extends HttpServlet {
 private static final long serialVersionUID = 1L;

 @Override protected void doGet(HttpServletRequest req, HttpServletResponse resp)
         throws ServletException, IOException {
     req.getRequestDispatcher("/WEB-INF/views/main/curriculum.jsp").forward(req, resp);
 }

 @Override protected void doPost(HttpServletRequest req, HttpServletResponse resp)
         throws ServletException, IOException {
     doGet(req, resp);
 }
}
