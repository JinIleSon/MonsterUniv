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
														+ "ORDER BY edept "
														+ "LIMIT 4 OFFSET 0";
	public static final String SELECT_COUNT_STUDENT_IN_EDEPT = "SELECT COUNT(*) as edeptcount, edept FROM student\r\n"
														+ "WHERE `condition` = '재학중' "
														+ "GROUP BY edept "
														+ "ORDER BY edept "
														+ "LIMIT 4 OFFSET 0";
	public static final String SELECT_COUNT_STUDENT_LEAVE_EDEPT = "SELECT COUNT(*) as edeptcount, edept FROM student\r\n"
														+ "WHERE `condition` = '휴학중' "
														+ "GROUP BY edept "
														+ "ORDER BY edept "
														+ "LIMIT 4 OFFSET 0";

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

	// 교육 운영 현황
	public static final String SELECT_LECTURE_RUN = "SELECT openmaj, deptcode, lname, `year`, prof, \r\n"
													+ "compdiv, grade, room, nownum, maxnum, \r\n"
													+ "(round(nownum/maxnum*100, 0) + '%') AS percent \r\n"
													+ "FROM lecture\r\n"
													+ "LIMIT 5 OFFSET 0";

	// 대학 운영 현황
	/* 대학 운영 현황 - 개설학과 개수 */
	public static final String COUNT_COLLEGE_RUN_MAJOR = "SELECT COUNT(DISTINCT deptname) AS countdept FROM collmaj";

	/* 대학 운영 현황 - 개설강좌 개수 */
	public static final String COUNT_COLLEGE_RUN_LECTURE = "SELECT COUNT(DISTINCT lname) AS countlname FROM lecture";

	/* 대학 운영 현황 - 전체교수 인원 */
	public static final String COUNT_COLLEGE_RUN_PROFESSOR = "SELECT COUNT(DISTINCT pnum) AS countpnum FROM professor";

	/* 대학 운영 현황 - 임직원 인원 */
	public static final String COUNT_COLLEGE_RUN_STAFF = "SELECT COUNT(*) AS countuser FROM `User` WHERE identification = 'admin'";

	/* 대학 운영 현황 - 학생 인원 */
	public static final String COUNT_COLLEGE_RUN_STUDENT_ALL = "SELECT COUNT(DISTINCT snum) AS countstuall FROM student";

	/* 대학 운영 현황 - 휴학생 인원 */
	public static final String COUNT_COLLEGE_RUN_STUDENT_LEAVE = "SELECT COUNT(DISTINCT snum) AS countstuleave FROM student WHERE `condition` = '휴학중'";

	/* 대학 운영 현황 - 대학원생 인원 */
	public static final String COUNT_COLLEGE_RUN_STUDENT_GRADSCHOOL = "SELECT COUNT(DISTINCT snum) AS countstugradschool FROM student WHERE ecol LIKE '%대학원%'";

	/* 대학 운영 현황 - 졸업생 인원 */
	public static final String COUNT_COLLEGE_RUN_STUDENT_GRADUATION = "SELECT COUNT(DISTINCT snum) AS countstugraduation FROM student WHERE `condition` = '졸업'";
}