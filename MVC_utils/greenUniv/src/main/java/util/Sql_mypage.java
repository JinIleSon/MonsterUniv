package util;

/**
 * 마이페이지 관련 SQL 모음
 * - 테이블/컬럼명은 프로젝트 DB 스키마에 맞게 변경하세요.
 *
 * 가정:
 *  - 사용자 기본키: users.identification (VARCHAR)  ← UserDTO.getIdentification()
 *  - 게시글: board(id BIGINT PK, author_id VARCHAR, title VARCHAR, created_at DATETIME)
 *  - 즐겨찾기: favorite(id BIGINT PK, user_id VARCHAR, title VARCHAR, link VARCHAR, created_at DATETIME)
 *  - 댓글: comment(id BIGINT PK, author_id VARCHAR, created_at DATETIME)
 */
public class Sql_mypage {

    /* ===== counts ===== */
    public static final String COUNT_FAVORITES = """
        SELECT COUNT(*) 
          FROM favorite 
         WHERE user_id = ?
    """;

    public static final String COUNT_POSTS = """
        SELECT COUNT(*) 
          FROM board 
         WHERE author_id = ?
    """;

    public static final String COUNT_COMMENTS = """
        SELECT COUNT(*) 
          FROM comment 
         WHERE author_id = ?
    """;

    /* ===== lists ===== */
    public static final String LIST_RECENT_POSTS = """
        SELECT id, title, created_at
          FROM board
         WHERE author_id = ?
         ORDER BY created_at DESC
         LIMIT ?
    """;

    public static final String LIST_FAVORITES = """
        SELECT id, title, link
          FROM favorite
         WHERE user_id = ?
         ORDER BY id DESC
         LIMIT ?
    """;

    /* ===== optional ===== */
    public static final String FIND_JOINED_AT = """
        SELECT joined_at
          FROM users
         WHERE identification = ?
    """;
}
