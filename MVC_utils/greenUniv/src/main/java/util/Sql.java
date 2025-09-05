package util;

public class Sql {
	
	// terms
//	public static final String SELECT_TERMS = "SELECT * FROM TB_TERMS where NO=?";
	
	// user
//	public static final String SELECT_COUNT = "SELECT COUNT(*) FROM TB_USER ";
//	public static final String WHERE_USID = "WHERE USID=?";
//	public static final String WHERE_NICK = "WHERE NICK=?";
//	public static final String WHERE_EMAIL = "WHERE EMAIL=?";
//	public static final String WHERE_HP   = "WHERE HP=?";
	
	
	//public static final String INSERT_USER = "INSERT INTO TB_USER (USID, PASS, US_NAME, NICK, EMAIL, HP, ZIP, ADDR1, ADDR2, REG_IP, REG_DATE) "
	//										+ "VALUES (?,STANDARD_HASH(?, 'SHA256'),?,?,?,?,?,?,?,?,SYSDATE)";

	
	// lecture
	public static final String SELECT_COUNT = "SELECT COUNT(*) FROM lecture";
	public static final String SELECT_ALL_LECTURES = "SELECT * FROM lecture "
													+ "ORDER BY DEPTCODE "
													+ "LIMIT 10 OFFSET ?";
	public static final String WITH_OPENMAJ = "WHERE OPENMAJ like ?";
	public static final String WITH_DEPTCODE = "WHERE DEPTCODE like ?";
	public static final String WITH_LNAME = "WHERE LNAME like ?";
	public static final String WITH_YEAR = "WHERE YEAR = REGEXP_REPLACE(?, '[^0-9]', '')";
	public static final String WITH_PROF = "WHERE PROF like ?";
	public static final String WITH_COMPDIV = "WHERE COMPDIV like ?";
	public static final String WITH_GRADE = "WHERE GRADE = REGEXP_REPLACE(?, '[^0-9]', '')";
	public static final String WITH_ROOM = "WHERE ROOM like ?";
	public static final String SEARCH_ORDER_DEPTCODE = "ORDER BY DEPTCODE";
	public static final String SEARCH_OFFET_ROW = "LIMIT 10 OFFSET ?";
}