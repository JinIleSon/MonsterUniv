// src/main/java/service/UserService.java
package service;

import dao.UserDAO;
import dto.UserDTO;
import util.ResultCode;

public class UserService {
    private final UserDAO userDAO = new UserDAO();
    
     // UserService.java
    public UserDTO getUser(String identification) {
        return userDAO.findById1(identification);
    }

    /**
     * 로그인: id로 사용자 조회 → 비번검증 → (선택) 역할 검증 → UserDTO 반환
     */
    public UserDTO login(String identification, String plainPassword, String role) {
        UserDTO found = userDAO.findById1(identification);
        if (found == null) return null;

        // (A) 평문 비교 (현재 DB가 평문일 때)
        boolean pwOk = plainPassword.equals(found.getPassword());

        // (B) 해시 비교(향후)
        // boolean pwOk = BCrypt.checkpw(plainPassword, found.getPassword());

        if (!pwOk) return null;

        // 역할 체크가 필요 없다면 주석 처리 가능
        if (role != null && !role.isEmpty()) {
            if (found.getRole() == null || !found.getRole().equalsIgnoreCase(role)) {
                // 필요 시 role 불일치 허용하려면 이 조건을 제거
                return null;
            }
        }
        return found;
    }
    
    
    public ResultCode loginCheck(String identification, String plainPassword, String role) {
        if (identification == null || identification.isEmpty() ||
            plainPassword == null || plainPassword.isEmpty()) {
            return ResultCode.LOGIN_INPUT_EMPTY;
        }

        UserDTO found = userDAO.findById1(identification);
        if (found == null) return ResultCode.LOGIN_FAILED;

        boolean pwOk = plainPassword.equals(found.getPassword());
        if (!pwOk) return ResultCode.LOGIN_FAILED;

        if (role != null && !role.isEmpty() &&
            (found.getRole() == null || !found.getRole().equalsIgnoreCase(role))) {
            return ResultCode.LOGIN_FAILED;
        }
        return ResultCode.LOGIN_SUCCESS;
    }
}
