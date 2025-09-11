package dao;

import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.Optional;

import javax.naming.NamingException;

import dto.UserDTO;
import util.DBHelper;
import util.Sql_user;

public class UserDAO extends DBHelper{
	public enum InsertResult {
        SUCCESS,
        DUPLICATE_ID,          // PK(identification) : user_pkv2
        DUPLICATE_NICKNAME,    // unique nickname    : user__un_nickname
        DUPLICATE_COMBO,       // unique (nick,phone,email) : user__un
        ERROR
    }

    /** 로그인용 조회 메서드 */
    public UserDTO findById1(String identification) {
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql_user.SELECT_BY_ID);
            psmt.setString(1, identification);
            rs = psmt.executeQuery();
            if (rs.next()) {
                UserDTO u = new UserDTO();
                u.setIdentification(rs.getString("identification"));
                u.setPassword(rs.getString("password"));
                u.setNickname(rs.getString("nickname"));
                u.setPhone(rs.getString("phone"));
                u.setEmail(rs.getString("email"));
                u.setAddress(rs.getString("address"));
                u.setRole(rs.getString("role"));
                return u;
            }
        } catch (Exception e) {
            e.printStackTrace(); // 로깅 권장
        }
        return null;
    }

    /** INSERT */
    public InsertResult insert(UserDTO u) {
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql_user.INSERT);
            psmt.setString(1, u.getIdentification());
            psmt.setString(2, u.getPassword()); // 반드시 해시 후 저장 권장(BCrypt 등)
            psmt.setString(3, u.getNickname());
            psmt.setString(4, u.getPhone());
            psmt.setString(5, u.getEmail());
            psmt.setString(6, u.getAddress());
            psmt.setString(7, u.getRole());

            int updated = psmt.executeUpdate();
            return (updated == 1) ? InsertResult.SUCCESS : InsertResult.ERROR;

        } catch (SQLIntegrityConstraintViolationException dup) {
            // 제약명으로 구분
            String msg = dup.getMessage();
            if (msg != null) {
                if (msg.contains("user_pkv2")) {
					return InsertResult.DUPLICATE_ID;
				}
                if (msg.contains("user__un_nickname")) {
					return InsertResult.DUPLICATE_NICKNAME;
				}
                if (msg.contains("user__un")) {
					return InsertResult.DUPLICATE_COMBO;
				}
            }
            return InsertResult.ERROR;

        } catch (SQLException | NamingException e) {
            e.printStackTrace();
            return InsertResult.ERROR;

        } finally {
            try { closeAll(); } catch (SQLException ignore) {}
        }
    }

    /** PK 조회 */
    public Optional<UserDTO> findById(String identification) {
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql_user.SELECT_BY_ID);
            psmt.setString(1, identification);
            rs = psmt.executeQuery();
            if (rs.next()) {
                UserDTO u = new UserDTO(
                    rs.getString("identification"),
                    rs.getString("password"),
                    rs.getString("nickname"),
                    rs.getString("phone"),
                    rs.getString("email"),
                    rs.getString("address"),
                    rs.getString("role")
                );
                return Optional.of(u);
            }
            return Optional.empty();
        } catch (SQLException | NamingException e) {
            e.printStackTrace();
            return Optional.empty();
        } finally {
            try { closeAll(); } catch (SQLException ignore) {}
        }
    }

    /** 닉네임 단독 unique 중복 체크 */
    public boolean existsNickname(String nickname) {
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql_user.EXISTS_NICK);
            psmt.setString(1, nickname);
            rs = psmt.executeQuery();
            return rs.next();
        } catch (SQLException | NamingException e) {
            e.printStackTrace();
            return true; // 에러 시 보수적으로 true
        } finally {
            try { closeAll(); } catch (SQLException ignore) {}
        }
    }

    /** (nickname, phone, email) 복합 unique 중복 체크 */
    public boolean existsCombo(String nickname, String phone, String email) {
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(Sql_user.EXISTS_COMBO);
            psmt.setString(1, nickname);
            psmt.setString(2, phone);
            psmt.setString(3, email);
            rs = psmt.executeQuery();
            return rs.next();
        } catch (SQLException | NamingException e) {
            e.printStackTrace();
            return true;
        } finally {
            try { closeAll(); } catch (SQLException ignore) {}
        }
    }
    
 // --- 아이디 찾기 ---
    public String findIdByNameAndPhone(String name, String phone) {
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(util.Sql_user.FIND_ID_BY_NAME_PHONE);
            psmt.setString(1, name);
            psmt.setString(2, phone);
            rs = psmt.executeQuery();
            if (rs.next()) return rs.getString(1);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { closeAll(); } catch (Exception ignore) {}
        }
        return null;
    }

    public String findIdByNameAndEmail(String name, String email) {
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(util.Sql_user.FIND_ID_BY_NAME_EMAIL);
            psmt.setString(1, name);
            psmt.setString(2, email);
            rs = psmt.executeQuery();
            if (rs.next()) return rs.getString(1);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { closeAll(); } catch (Exception ignore) {}
        }
        return null;
    }

    // --- 비밀번호 재설정(아이디+이메일 일치 확인) ---
    public UserDTO findByIdAndEmail(String identification, String email) {
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(util.Sql_user.SELECT_BY_ID_AND_EMAIL);
            psmt.setString(1, identification);
            psmt.setString(2, email);
            rs = psmt.executeQuery();
            if (rs.next()) {
                UserDTO u = new UserDTO();
                u.setIdentification(rs.getString("identification"));
                u.setPassword(rs.getString("password"));
                u.setNickname(rs.getString("nickname"));
                u.setPhone(rs.getString("phone"));
                u.setEmail(rs.getString("email"));
                u.setAddress(rs.getString("address"));
                u.setRole(rs.getString("role"));
                return u;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { closeAll(); } catch (Exception ignore) {}
        }
        return null;
    }
    
    // --- 비밀번호 업데이트 ---
    public boolean updatePassword(String identification, String newHashedPassword) {
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(util.Sql_user.UPDATE_PASSWORD);
            psmt.setString(1, newHashedPassword);
            psmt.setString(2, identification);
            return psmt.executeUpdate() == 1;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { closeAll(); } catch (Exception ignore) {}
        }
        return false;
    }
    
    // --- 프로필 업데이트 ---
    public boolean updateProfile(String identification, String nickname, String email,
            String phone, String address) {
	try {
		conn = getConnection();
		psmt = conn.prepareStatement(util.Sql_user.UPDATE_PROFILE);
		psmt.setString(1, nickname);
		psmt.setString(2, email);
		psmt.setString(3, phone);
		psmt.setString(4, address);
		psmt.setString(5, identification);
		return psmt.executeUpdate() == 1;
	} catch (Exception e) {
		e.printStackTrace();
		return false;
	} finally {
	try { closeAll(); } catch (Exception ignore) {}
	}
}

}
