package util;

public class Sql_user {

	// INSERT
    public static final String INSERT =
        "INSERT INTO `User` (`identification`, `password`, `nickname`, `phone`, `email`, `address`, `role`) " +
        "VALUES (?, ?, ?, ?, ?, ?, ?)";

    // PK 조회
    public static final String SELECT_BY_ID =
        "SELECT `identification`, `password`, `nickname`, `phone`, `email`, `address`, `role` " +
        "FROM `User` WHERE `identification` = ?";

    // 닉네임 단독 unique 중복 확인
    public static final String EXISTS_NICK =
        "SELECT 1 FROM `User` WHERE `nickname` = ? LIMIT 1";

    // (nickname, phone, email) 복합 unique 중복 확인
    public static final String EXISTS_COMBO =
        "SELECT 1 FROM `User` WHERE `nickname` = ? AND `phone` = ? AND `email` = ? LIMIT 1";
    
    // --- 로그인용 (id로 단건 조회) ---
    public static final String SELECT_BY_ID1 =
        "SELECT identification, password, nickname, phone, email, address, role " +
        "FROM `User` WHERE identification=?";
    
    // 아이디 찾기
    public static final String FIND_ID_BY_NAME_PHONE =
        "SELECT identification FROM `User` WHERE nickname=? AND phone=? LIMIT 1";

    public static final String FIND_ID_BY_NAME_EMAIL =
        "SELECT identification FROM `User` WHERE nickname=? AND email=? LIMIT 1";

    // 아이디+이메일 일치 조회
    public static final String SELECT_BY_ID_AND_EMAIL =
        "SELECT identification, password, nickname, phone, email, address, role " +
        "FROM `User` WHERE identification=? AND email=?";

    // 비밀번호 업데이트
    public static final String UPDATE_PASSWORD =
        "UPDATE `User` SET `password`=? WHERE `identification`=?";

}
