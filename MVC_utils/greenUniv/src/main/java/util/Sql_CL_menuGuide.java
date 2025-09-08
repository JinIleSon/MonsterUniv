package util;

public class Sql_CL_menuGuide {
	
	
	
	public static final String SELECT_ARTICLE_ALL = "SELECT * FROM cl_menuguide";
	// 파일 부분
//	public final static String SELECT_ARTICLE_WITH_FILE = "SELECT A.*, U.NICK, F.*\r\n"
//														+ "FROM TB_ARTICLE A\r\n"
//														+ "JOIN TB_USER U ON A.WRITER = U.USID \r\n"
//														+ "LEFT JOIN TB_FILE F ON A.ANO = F.ANO\r\n"
//														+ "WHERE A.ANO = ?";
	
	
	// 파일 넣지않음
//	public static final String INSERT_ARTICLE = "INSERT INTO TB_ARTICLE (title, content, file_cnt, writer, reg_ip, wdate) VALUES (?,?,?,?,?,sysdate)";
		
}