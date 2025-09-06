package util;

public class Sql {
	
<<<<<<< HEAD
	// article
	public static final String SELECT_COUNT_TOTAL = "SELECT COUNT(*) FROM commu_anno";
=======
	// terms
//	public static final String SELECT_TERMS = "SELECT * FROM TB_TERMS where NO=?";
>>>>>>> fe7e958927bf6a8e126074100007c5c84b799179
	
	// user
//	public static final String SELECT_COUNT = "SELECT COUNT(*) FROM TB_USER ";
//	public static final String WHERE_USID = "WHERE USID=?";
//	public static final String WHERE_NICK = "WHERE NICK=?";
//	public static final String WHERE_EMAIL = "WHERE EMAIL=?";
//	public static final String WHERE_HP   = "WHERE HP=?";
	
	
	//public static final String INSERT_USER = "INSERT INTO TB_USER (USID, PASS, US_NAME, NICK, EMAIL, HP, ZIP, ADDR1, ADDR2, REG_IP, REG_DATE) "
	//										+ "VALUES (?,STANDARD_HASH(?, 'SHA256'),?,?,?,?,?,?,?,?,SYSDATE)";

	
<<<<<<< HEAD
	public static final String SEARCH_ORDER_ID = "ORDER BY id DESC ";
	public static final String SEARCH_OFFEST_ROW = "LIMIT 10 OFFSET ?";
	
	public static final String SELECT_ARTICLE_ALL = "SELECT * FROM commu_anno\r\n"
													+ "ORDER BY id DESC\r\n"
													+ "LIMIT 10 OFFSET ?";
	// 파일 부분
//	public final static String SELECT_ARTICLE_WITH_FILE = "SELECT A.*, U.NICK, F.*\r\n"
//														+ "FROM TB_ARTICLE A\r\n"
//														+ "JOIN TB_USER U ON A.WRITER = U.USID \r\n"
//														+ "LEFT JOIN TB_FILE F ON A.ANO = F.ANO\r\n"
//														+ "WHERE A.ANO = ?";
	
	public static final String SELECT_MAX_ID = "SELECT MAX(id) FROM commu_anno";
	
	// 파일 넣지않음
//	public static final String INSERT_ARTICLE = "INSERT INTO TB_ARTICLE (title, content, file_cnt, writer, reg_ip, wdate) VALUES (?,?,?,?,?,sysdate)";
		
	
	//lecture 
	public static final String INSERT_LECTURE = "INSERT INTO lecture (deptcode,`year`,semester,compdiv,lname,lexpl,opencol,openmaj,grade,prof,yclass,yclase,times,timee,timed,evaway,book,room,maxnum,nownum) " + 
												"VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,32)";
	
	public static final String SELECT_LECTURE_COUNT_TOTAL = "SELECT COUNT(*) FROM lecture";
	public static final String SELECT_LECTURE_COUNT_SEARCH = "SELECT COUNT(*) FROM lecture";
	public static final String SELECT_LECTURE_ALL = "SELECT * FROM lecture\r\n"
													+ "ORDER BY deptcode DESC\r\n"
													+ "LIMIT 10 OFFSET ?";
=======
	// lecture
	public static final String SELECT_COUNT = "SELECT COUNT(*) FROM lecture";
	public static final String SELECT_ALL_LECTURES = "SELECT * FROM lecture";
	public static final String WITH_OPENMAJ = " WHERE OPENMAJ like ?";
	public static final String WITH_DEPTCODE = " WHERE DEPTCODE like ?";
	public static final String WITH_LNAME = " WHERE LNAME like ?";
	public static final String WITH_YEAR = " WHERE YEAR = REGEXP_REPLACE(?, '[^0-9]', '')";
	public static final String WITH_PROF = " WHERE PROF like ?";
	public static final String WITH_COMPDIV = " WHERE COMPDIV like ?";
	public static final String WITH_GRADE = " WHERE GRADE = REGEXP_REPLACE(?, '[^0-9]', '')";
	public static final String WITH_ROOM = " WHERE ROOM like ?";
	public static final String SEARCH_ORDER_DEPTCODE = " ORDER BY DEPTCODE";
	public static final String SEARCH_OFFET_ROW = " LIMIT 10 OFFSET ?";
>>>>>>> fe7e958927bf6a8e126074100007c5c84b799179
}