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
		public static final String SEARCH_OFFEST_ROW = "LIMIT 10 OFFSET ?";
}
