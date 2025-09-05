package util;

public class Sql_comm_emp {
	
	// article
	public static final String SELECT_COUNT_TOTAL = "SELECT COUNT(*) FROM commu_emp";
	
	// 검색 기능
	public static final String SELECT_COUNT_SEARCH = "SELECT COUNT(*) FROM commu_emp ";
	
	public static final String SELECT_ARTICLE_SEARCH = "SELECT * FROM commu_emp ";
	
	public static final String SEARCH_WHERE_TITLE = "WHERE TITLE LIKE ?";
	public static final String SEARCH_WHERE_ALL = "WHERE id = ?\r\n"
													+ "OR `condition` LIKE ?\r\n"
													+ "OR nick LIKE ?\r\n"
													+ "OR title LIKE ?\r\n"
													+ "OR DATE LIKE ?";
	public static final String SEARCH_WHERE_NICK = "WHERE NICK LIKE ?";
	
	public static final String SEARCH_ORDER_ID = "ORDER BY id DESC ";
	public static final String SEARCH_OFFEST_ROW = "LIMIT 10 OFFSET ?";
	
	public static final String SELECT_ARTICLE_ALL = "SELECT * FROM commu_emp\r\n"
													+ "ORDER BY id DESC\r\n"
													+ "LIMIT 10 OFFSET ?";
	// 파일 부분
//	public final static String SELECT_ARTICLE_WITH_FILE = "SELECT A.*, U.NICK, F.*\r\n"
//														+ "FROM TB_ARTICLE A\r\n"
//														+ "JOIN TB_USER U ON A.WRITER = U.USID \r\n"
//														+ "LEFT JOIN TB_FILE F ON A.ANO = F.ANO\r\n"
//														+ "WHERE A.ANO = ?";
	
	public static final String SELECT_MAX_ID = "SELECT MAX(id) FROM commu_emp";
	
	// 파일 넣지않음
//	public static final String INSERT_ARTICLE = "INSERT INTO TB_ARTICLE (title, content, file_cnt, writer, reg_ip, wdate) VALUES (?,?,?,?,?,sysdate)";
		
}