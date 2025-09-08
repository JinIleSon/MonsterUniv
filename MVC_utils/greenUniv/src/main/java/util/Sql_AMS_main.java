package util;

public class Sql_AMS_main {
	
	// 학사안내 공지사항
	public static final String SELECT_ARTICLE_ALL_AA = "SELECT * FROM aa_notice\r\n"
													+ "ORDER BY id DESC\r\n"
													+ "LIMIT 5";
	
	// 입학상담
	public static final String SELECT_ARTICLE_ALL_ADM = "SELECT *\r\n"
													+ "FROM adm_counsel\r\n"
													+ "WHERE id BETWEEN 1 AND 5\r\n"
													+ "ORDER BY id DESC";
	
	// 학과별 학생 현황
	public static final String SELECT_COUNT_STUDENT_ALL_EDEPT = "SELECT COUNT(*) as edeptcount, edept FROM student\r\n"
														+ "WHERE `condition` = '재학중' or `condition` = '휴학중' "
														+ "GROUP BY edept "
														+ "ORDER BY edept";
	public static final String SELECT_COUNT_STUDENT_IN_EDEPT = "SELECT COUNT(*) as edeptcount, edept FROM student\r\n"
														+ "WHERE `condition` = '재학중' "
														+ "GROUP BY edept "
														+ "ORDER BY edept";
	public static final String SELECT_COUNT_STUDENT_LEAVE_EDEPT = "SELECT COUNT(*) as edeptcount, edept FROM student\r\n"
														+ "WHERE `condition` = '휴학중' "
														+ "GROUP BY edept "
														+ "ORDER BY edept";
	
	// 학년별 학생 현황
	public static final String SELECT_COUNT_STUDENT_ALL_EGRADE = "SELECT COUNT(*) as egradecount, REGEXP_REPLACE(egrade, '[^0-9]', '') as egrade FROM student\r\n"
																+ "WHERE `condition` = '재학중' or `condition` = '휴학중' "
																+ "GROUP BY egrade "
																+ "ORDER BY egrade";
	public static final String SELECT_COUNT_STUDENT_IN_EGRADE = "SELECT COUNT(*) as egradecount, REGEXP_REPLACE(egrade, '[^0-9]', '') as egrade FROM student\r\n"
																+ "WHERE `condition` = '재학중' "
																+ "GROUP BY egrade "
																+ "ORDER BY egrade";
	public static final String SELECT_COUNT_STUDENT_LEAVE_EGRADE = "SELECT COUNT(*) as egradecount, REGEXP_REPLACE(egrade, '[^0-9]', '') as egrade FROM student\r\n"
																+ "WHERE `condition` = '휴학중' "
																+ "GROUP BY egrade "
																+ "ORDER BY egrade";
	
	// 대학 운영 현황
	public static final String SELECT_COLLEGE_RUN = "SELECT openmaj, deptcode, lname, `year`, prof, \r\n"
													+ "compdiv, grade, room, nownum, maxnum, \r\n"
													+ "(round(nownum/maxnum*100, 0) + '%') AS percent \r\n"
													+ "FROM lecture\r\n"
													+ "LIMIT 5 OFFSET 0";
}