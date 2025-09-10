package util;

public class Sql_professor {
	
	//교수 신규 등록
	public static final String INSERT_PROFESSOR = "INSERT INTO professor(pregno, pname, pengname, pgender, pnation, ptel, pemail, pzip, paddr1, paddr2, gradun, major, gradDate ,degree, takeCol, takeDept, appDate, role, condition) "
									            +               "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,'professor', '재직중')";
	
	// 전체 교수 개수 조회
	public static final String SELECT_COUNT_TOTAL = "SELECT COUNT(*) FROM `professor`";
	
	// 검색 결과 개수 조회 (기본)
	public static final String SELECT_COUNT_SEARCH = "SELECT COUNT(*) FROM `professor` WHERE ";
	
	// 전체 교수 목록 조회 (페이지네이션)
	public static final String SELECT_PROFESSOR_ALL = "SELECT "
			+ "`pnum`, "           // 교수번호
			+ "`pname`, "          // 이름
			+ "`pregno`, "         // 주민번호
			+ "`ptel`, "           // 전화번호
			+ "`pemail`, "         // 이메일
			+ "`takeDept`, "       // 학과
			+ "`degree`, "         // 직위
			+ "`condition`, "      // 재직상태
			+ "DATE_FORMAT(`appDate`, '%Y-%m-%d') AS appDate "  // 임용일
			+ "FROM `professor` "
			+ "ORDER BY `pnum` ASC "
			+ "LIMIT ?, 10";
	
	// 교수 검색 조회 (기본)
	public static final String SELECT_PROFESSOR_SEARCH = "SELECT "
			+ "`pnum`, "           // 교수번호                             
			+ "`pname`, "          // 이름                               
			+ "`pregno`, "         // 주민번호                             
			+ "`ptel`, "           // 전화번호                             
			+ "`pemail`, "         // 이메일                              
			+ "`takeDept`, "       // 학과                               
			+ "`degree`, "         // 직위                               
			+ "`condition`, "      // 재직상태                             
			+ "DATE_FORMAT(`appDate`, '%Y-%m-%d') AS appDate "  // 임용일 
			+ "FROM `professor` WHERE ";
	
	// 검색 조건 WHERE 절
	public static final String SEARCH_WHERE_PNUM = "`pnum` LIKE ? ";
	public static final String SEARCH_WHERE_PNAME = "`pname` LIKE ? ";
	public static final String SEARCH_WHERE_DEPARTMENT = "`takeDept` LIKE ? ";
	public static final String SEARCH_WHERE_STATUS = "`condition` = ? ";  // 재직상태는 정확한 매칭
	
	// 정렬 및 페이징
	public static final String SEARCH_ORDER_PNUM = "ORDER BY `pnum` ASC ";
	public static final String SEARCH_OFFSET_ROW = "LIMIT ?, 10";
}
