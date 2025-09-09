package util;

public class Sql_CAD_deptList {
	
	// 전체 학과 개수 조회
	public static final String SELECT_COUNT_TOTAL = "SELECT COUNT(*) FROM `collmaj` WHERE `unitcol` IS NOT NULL";
	
	// 검색 결과 개수 조회 (기본)
	public static final String SELECT_COUNT_SEARCH = "SELECT COUNT(*) FROM `collmaj` AS c "
			+ "WHERE c.`unitcol` IS NOT NULL AND ";
	
	// 전체 학과 목록 조회 (페이지네이션)
	public static final String SELECT_DEPTLIST_ALL = "SELECT "
			+ "c.`deptnum`, "
			+ "c.`unitcol`, "
			+ "c.`deptname`, "
			+ "c.`dean`, "
			+ "c.`depttel`, "
			+ "COUNT(DISTINCT p.`pnum`) AS proCount, "
			+ "COUNT(DISTINCT s.`snum`) AS stuCount, "
			+ "COUNT(DISTINCT l.`deptCode`) AS lecCount "
			+ "FROM `collmaj` c "
			+ "LEFT JOIN `professor` p ON c.`unitcol` = p.`takecol` AND c.`deptname` = p.`takedept` "
			+ "LEFT JOIN `student` s ON c.`unitcol` = s.`ecol` AND c.`deptname` = s.`edept` "
			+ "LEFT JOIN `lecture` l ON c.`unitcol` = l.`opencol` AND c.`deptname` = l.`openMaj` "
			+ "WHERE c.`unitcol` IS NOT NULL "
			+ "GROUP BY c.`deptnum`, c.`unitcol`, c.`deptname`, c.`dean`, c.`depttel` "
			+ "ORDER BY c.`unitcol`, c.`deptname` "
			+ "LIMIT ?, 10";
	
	// 학과 검색 조회 (기본)
	public static final String SELECT_DEPTLIST_SEARCH = "SELECT "
			+ "c.`deptnum`, "
			+ "c.`unitcol`, "
			+ "c.`deptname`, "
			+ "c.`dean`, "
			+ "c.`depttel`, "
			+ "COUNT(DISTINCT p.`pnum`) AS proCount, "
			+ "COUNT(DISTINCT s.`snum`) AS stuCount, "
			+ "COUNT(DISTINCT l.`deptCode`) AS lecCount "
			+ "FROM `collmaj` c "
			+ "LEFT JOIN `professor` p ON c.`unitcol` = p.`takecol` AND c.`deptname` = p.`takedept` "
			+ "LEFT JOIN `student` s ON c.`unitcol` = s.`ecol` AND c.`deptname` = s.`edept` "
			+ "LEFT JOIN `lecture` l ON c.`unitcol` = l.`opencol` AND c.`deptname` = l.`openMaj` "
			+ "WHERE c.`unitcol` IS NOT NULL AND ";
	
	// 검색 조건 WHERE 절
	public static final String SEARCH_WHERE_DEPTNAME = "c.`deptname` LIKE ? ";
	public static final String SEARCH_WHERE_UNITCOL = "c.`unitcol` LIKE ? ";
	public static final String SEARCH_WHERE_DEAN = "c.`dean` LIKE ? ";
	
	// 정렬 및 페이징
	public static final String SEARCH_ORDER_DEPTNUM = "GROUP BY c.`deptnum`, c.`unitcol`, c.`deptname`, c.`dean`, c.`depttel` "
			+ "ORDER BY c.`unitcol`, c.`deptname` ";
	public static final String SEARCH_OFFSET_ROW = "LIMIT ?, 10";
	
	// 기존 전체 조회 (페이지네이션 없음 - 하위호환성)
	public static final String SELECT_DEPTLIST = "SELECT "
			+ "c.`deptnum`, "
			+ "c.`unitcol`, "
			+ "c.`deptname`, "
			+ "c.`dean`, "
			+ "c.`depttel`, "
			+ "COUNT(DISTINCT p.`pnum`) AS proCount, "
			+ "COUNT(DISTINCT s.`snum`) AS stuCount, "
			+ "COUNT(DISTINCT l.`deptCode`) AS lecCount "
			+ "FROM `collmaj` c "
			+ "LEFT JOIN `professor` p ON c.`unitcol` = p.`takecol` AND c.`deptname` = p.`takedept` "
			+ "LEFT JOIN `student` s ON c.`unitcol` = s.`ecol` AND c.`deptname` = s.`edept` "
			+ "LEFT JOIN `lecture` l ON c.`unitcol` = l.`opencol` AND c.`deptname` = l.`openMaj` "
			+ "WHERE c.`unitcol` IS NOT NULL "
			+ "GROUP BY c.`deptnum`, c.`unitcol`, c.`deptname`, c.`dean`, c.`depttel` "
			+ "ORDER BY c.`unitcol`, c.`deptname`";
	
}
