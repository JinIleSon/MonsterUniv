package controller.login;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

import service.AuthRecoveryService;
import util.MaskingUtil;

@WebServlet("/login/findId.do")
public class FindIdController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final AuthRecoveryService recoveryService = new AuthRecoveryService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/login/find-id.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding(StandardCharsets.UTF_8.name());

        String name  = trim(req.getParameter("name"));
        String phone = trim(req.getParameter("phone"));
        String email = trim(req.getParameter("email"));

        if (name.isEmpty() || (phone.isEmpty() && email.isEmpty())) {
            req.setAttribute("error", "이름과 휴대폰(또는 이메일) 중 하나를 입력해 주세요.");
            req.getRequestDispatcher("/WEB-INF/views/login/find-id.jsp").forward(req, resp);
            return;
        }

        String rawId = null;
        if (!phone.isEmpty()) {
            rawId = recoveryService.findIdentificationByNamePhone(name, phone);
        } else {
            rawId = recoveryService.findIdentificationByNameEmail(name, email);
        }

        // 존재 여부 노출 최소화: 못 찾았어도 동일 화면으로 안내
        if (rawId != null) {
            req.setAttribute("maskedId", MaskingUtil.maskId(rawId));
        }
        req.setAttribute("done", true); // 완료 플래그
        req.getRequestDispatcher("/WEB-INF/views/login/find-id.jsp").forward(req, resp);
    }

    private static String trim(String s) { return s == null ? "" : s.trim(); }
}
