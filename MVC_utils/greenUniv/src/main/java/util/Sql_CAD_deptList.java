package util;

public class Sql_CAD_deptList {
	
	public static final String SELECT_DEPTLIST = "SELECT 	c.deptnum,	c.unitcol ,	c.deptname,	c.dean,	c.depttel, COUNT(DISTINCT p.pnum) AS '소속 교수 수',	COUNT(DISTINCT s.snum) AS '소속 학생 수' ,COUNT(DISTINCT l.deptCode) AS '개설 강의 수' "
			                                   + "FROM collmaj c "
			                                   + "left JOIN professor p ON c.unitcol  = p.takecol AND c.deptname = p.takedept "
			                                   + "left JOIN student s ON c.unitcol = s.ecol AND c.deptname = s.edept "
			                                   + "LEFT JOIN lecture l ON c.unitcol = l.opencol AND c.deptName = l.openMaj "
			                                   + "WHERE c.unitcol is NOT null "
			                                   + "GROUP BY 	c.deptnum,	c.unitcol ,	c.deptname,	c.dean,	c.depttel "
			                                   + "ORDER BY c.unitcol, c.deptname";
	
}
