package dto;

public class SA_detailsDTO {
	private int snum;
	private String yclasS;
	private String semester;
	private String deptCode;
	private String lname;
	private String year;
	private String prof;
	private int grade;
	private String compDiv;
	private String timeS;
	private String timeE;
	private String timeD;
	private String room;
	private String lTimes;

	public int getSnum() {
		return snum;
	}

	public void setSnum(int snum) {
		this.snum = snum;
	}

	public String getYclasS() {
		return yclasS;
	}

	public void setYclasS(String yclasS) {
		this.yclasS = yclasS;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public String getDeptCode() {
		return deptCode;
	}

	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getProf() {
		return prof;
	}

	public void setProf(String prof) {
		this.prof = prof;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getCompDiv() {
		return compDiv;
	}

	public void setCompDiv(String compDiv) {
		this.compDiv = compDiv;
	}

	public String getTimeS() {
		return timeS;
	}

	public void setTimeS(String timeS) {
		this.timeS = timeS;
	}

	public String getTimeE() {
		return timeE;
	}

	public void setTimeE(String timeE) {
		this.timeE = timeE;
	}

	public String getTimeD() {
		return timeD;
	}

	public void setTimeD(String timeD) {
		this.timeD = timeD;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getlTimes() {
		return lTimes;
	}

	public void setlTimes(String lTimes) {
		this.lTimes = lTimes;
	}

	@Override
	public String toString() {
		return "SA_detailsDTO [snum=" + snum + ", yclasS=" + yclasS + ", semester=" + semester + ", deptCode="
				+ deptCode + ", lname=" + lname + ", year=" + year + ", prof=" + prof + ", grade=" + grade
				+ ", compDiv=" + compDiv + ", timeS=" + timeS + ", timeE=" + timeE + ", timeD=" + timeD + ", room="
				+ room + ", lTimes=" + lTimes + "]";
	}
}
