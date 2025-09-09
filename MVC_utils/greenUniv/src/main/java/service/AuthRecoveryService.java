package service;

import dao.UserDAO;
import dto.UserDTO;
import util.MailUtil;
import util.PasswordUtil;
import util.TokenUtil;

public class AuthRecoveryService {
    private final UserDAO userDAO = new UserDAO();

    public String findIdentificationByNamePhone(String name, String phone) {
        return userDAO.findIdByNameAndPhone(name, phone);
    }

    public String findIdentificationByNameEmail(String name, String email) {
        return userDAO.findIdByNameAndEmail(name, email);
    }

    /**
     * 아이디 + 이메일이 일치하면 임시 비밀번호 발급 후 저장/메일 발송
     * 존재하지 않아도 true/false를 구분하지 않도록, 호출부에서는 동일 안내를 하게 하세요.
     */
    public boolean issueTemporaryPassword(String identification, String email) {
        UserDTO user = userDAO.findByIdAndEmail(identification, email);
        if (user == null) {
            // 사용자 열거 방지: false를 리턴해도, 컨트롤러에서는 동일 메시지를 보여주게 구성
            return false;
        }

        String tmpPw = TokenUtil.generateTemporaryPassword(10);
        String toSave = PasswordUtil.hash(tmpPw); // 현재 평문 저장을 쓰면 hash()가 패스스루여도 OK

        boolean updated = userDAO.updatePassword(identification, toSave);
        if (!updated) return false;

        // 메일 전송 (실패해도 DB는 이미 갱신되었으니 true/false는 정책에 맞춰)
        boolean mailed = MailUtil.sendResetMail(email, identification, tmpPw);
        return mailed;
    }
}
