package util;

public class Sql_CAD_register {
	public static final String SELECT_DEPTNAME = "SELECT DISTINCT colname FROM collmaj ORDER BY colname";
	public static final String INSERT_COLLEGE = "INSERT INTO collmaj (colname, coleng, coltit, colcont) VALUES(?,?,?,?)";
	public static final String INSERT_DEPT = "INSERT INTO collmaj (deptname, estyear, depttel, unitcol, engname, dean, deptoff) VALUES (?,?,?,?,?,?,?)";
}
