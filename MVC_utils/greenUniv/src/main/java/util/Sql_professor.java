package util;

public class Sql_professor {
	public static final String INSERT_PROFESSOR = "INSERT INTO professor(pregno, pname, pengname, pgender, pnation, ptel, pemail, pzip, paddr1, paddr2, gradun, major, gradDate ,degree, takeCol, takeDept, appDate, role) "
									            +               "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,'professor')";
}
