package util;

public class Sql_lecture {
		//lecture 
		public static final String INSERT_LECTURE = "INSERT INTO lecture (deptcode,`year`,semester,compdiv,lname,lexpl,opencol,openmaj,grade,prof,yclass,yclase,times,timee,timed,evaway,book,room,maxnum,nownum) " + 
													"VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,32)";
		
		public static final String SELECT_LECTURE_COUNT_TOTAL = "SELECT COUNT(*) FROM lecture";
		public static final String SELECT_LECTURE_COUNT_SEARCH = "SELECT COUNT(*) FROM lecture";
		public static final String SELECT_LECTURE_ALL = "SELECT * FROM lecture\r\n" 
														+ "ORDER BY deptcode DESC\r\n" 
														+ "LIMIT 10 OFFSET ?";
		
		public static final String SELECT_COUNT_SEARCH = "SELECT COUNT(*) FROM lecture ";
		
		public static final String SEARCH_WHERE_LNAME = "WHERE LNAME LIKE ?";
		public static final String SEARCH_WHERE_PROF = "WHERE PROF LIKE ?";
		public static final String SEARCH_WHERE_ALL = "WHERE deptcode = ?\r\n"
														+ "OR LNAME LIKE ?\r\n"
														+ "OR PROF LIKE ?";
		
		public static final String SELECT_LECTURE_SEARCH = "SELECT * FROM lecture ";
		public static final String SEARCH_ORDER_DEPTCODE = "ORDER BY deptcode DESC ";
		public static final String SEARCH_OFFSET_ROW = "LIMIT 10 OFFSET ?";
		
		//course
		public static final String SELECT_COURSE = "SELECT b.semester,a.snum,a.sname,b.year,a.edept,b.deptcode,b.lname,b.compdiv,b.prof,b.grade FROM student a JOIN sa_details b ON a.snum = b.snum ORDER BY a.snum DESC LIMIT 10 OFFSET ?";
		public static final String SELECT_COURSE_COUNT_TOTAL = "SELECT COUNT(*) FROM student a JOIN sa_details b ON a.snum = b.snum ";
		public static final String SELECT_COURSE_SEARCH = "SELECT b.semester,a.snum,a.sname,b.year,a.edept,b.deptcode,b.lname,b.compdiv,b.prof,b.grade FROM student a JOIN sa_details b ON a.snum = b.snum ";
		public static final String SELECT_COURSECOUNT_SEARCH = "SELECT COUNT(*) FROM student a JOIN sa_details b ON a.snum = b.snum ";
		public static final String COURSE_SEARCH_WHERE_LNAME = "WHERE b.lname LIKE ?";
		public static final String COURSE_SEARCH_WHERE_PROF = "WHERE b.prof LIKE ?";
		public static final String COURSE_SEARCH_ORDER_DEPTCODE = "ORDER BY b.deptcode DESC ";
		
		//student
		public static final String INSERT_STUDENT = "INSERT INTO student " + 
				"VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,'student','재학중')";
		
}
