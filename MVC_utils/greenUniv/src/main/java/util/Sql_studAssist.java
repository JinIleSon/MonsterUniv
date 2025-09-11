package util;

public class Sql_studAssist {

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


	// courseReg
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

	public static final String SELECT_COUNT_WITH_CCODE = "SELECT COUNT(*) FROM lecture WHERE ccode = ?";
	public static final String SELECT_ALL_LECTURES_WITH_CCODE = "SELECT * FROM lecture WHERE ccode = ?";
	public static final String AND_OPENMAJ = " AND OPENMAJ like ?";
	public static final String AND_DEPTCODE = " AND DEPTCODE like ?";
	public static final String AND_LNAME = " AND LNAME like ?";
	public static final String AND_YEAR = " AND YEAR = REGEXP_REPLACE(?, '[^0-9]', '')";
	public static final String AND_PROF = " AND PROF like ?";
	public static final String AND_COMPDIV = " AND COMPDIV like ?";
	public static final String AND_GRADE = " AND GRADE = REGEXP_REPLACE(?, '[^0-9]', '')";
	public static final String AND_ROOM = " AND ROOM like ?";
	public static final String SEARCH_ORDER_DEPTCODE = " ORDER BY DEPTCODE";
	public static final String SEARCH_OFFET_ROW = " LIMIT 5 OFFSET ?";

	public static final String INSERT_TO_DETAIL = "INSERT INTO sa_details3 VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	public static final String PLUS_NOWNUM = "UPDATE lecture SET NOWNUM = NOWNUM+1 WHERE DEPTCODE = ";

	// courseRegDetails
	public static final String SELECT_REGDETAILS_WITH_SNUM = "SELECT * FROM sa_details3 WHERE SNUM = ?";
	public static final String SELECT_WITH_YEAR_AND_SEM = "SELECT * FROM sa_details3 WHERE YEAR(YCLASS) = ? AND SEMESTER = ? AND SNUM = ?";
	public static final String SELECT_DETAILS_COUNT_WITH_SNUM = "SELECT COUNT(*) FROM sa_details3 WHERE SNUM = ?";
	public static final String SELECT_DETAILS_COUNT_WITH_YEAR_AND_SEM = "SELECT COUNT(*) FROM sa_details3 WHERE YEAR(YCLASS) = ? AND SEMESTER = ? AND SNUM = ?";

	public static final String GRADESUM_WITH_YEAR_AND_SEM = "SELECT SUM(GRADE) FROM sa_details3 "
															+ "WHERE SNUM = ? AND YEAR(TIMES) = ? AND SEMESTER = ? "
															+ "GROUP BY SNUM, YEAR(TIMES), SEMESTER";

	public static final String DELETE_LECTURE = "DELETE FROM sa_details3 WHERE deptcode = ? AND snum = ?";
	public static final String MINUS_NOWNUM = "UPDATE lecture SET NOWNUM = NOWNUM-1 WHERE DEPTCODE = ";



	// curric
	public static final String SELECT_ARTICLE_curricAll1 = "SELECT * FROM lecture\r\n"
															+ "WHERE ccode = ? "
															+ "and year = 1 "
															+ "and compDiv = '전공'";
	public static final String SELECT_ARTICLE_curricAll2 = "SELECT * FROM lecture\r\n"
															+ "WHERE ccode = ? "
															+ "and year = 2 "
															+ "and compDiv = '전공'";
	public static final String SELECT_ARTICLE_curricAll3 = "SELECT * FROM lecture\r\n"
															+ "WHERE ccode = ? "
															+ "and year = 3 "
															+ "and compDiv = '전공'";
	public static final String SELECT_ARTICLE_curricAll4 = "SELECT * FROM lecture\r\n"
															+ "WHERE ccode = ? "
															+ "and year = 4 "
															+ "and compDiv = '전공'";
	public static final String SELECT_ARTICLE_curricAllCommon = "SELECT * FROM lecture\r\n"
															+ "WHERE ccode = ? "
															+ "and year = 1 "
															+ "and compDiv = '선택'";



	// chkGrades
	public static final String SELECT_GRADE_WITH_SNUM_AND_YEAR_AND_SEM = "SELECT * FROM sa_grade3 WHERE SNUM = ? AND YEAR(YCLASS) = ? AND SEMESTER = ?";
	public static final String SELECT_COUNT_WITH_SNUM_AND_YEAR_AND_SEM = "SELECT COUNT(*) FROM sa_grade3 WHERE SNUM = ? AND YEAR(YCLASS) = ? AND SEMESTER = ?";
	public static final String SELECT_SUM_WITH_SNUM_AND_YEAR_AND_SEM = "SELECT SUM(GRADE) FROM sa_grade3 WHERE SNUM = ? AND YEAR(YCLASS) = ? AND SEMESTER = ?";
}