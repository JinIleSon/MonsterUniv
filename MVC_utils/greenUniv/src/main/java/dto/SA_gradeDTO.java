package dto;

public class SA_gradeDTO {
	private int snum;
	private String deptCode;
	private String lname;
	private String year;
	private String prof;
	private String compDiv;
	private int score;
	private String rating;
	private int grade;
	private String yclasS;
	private String semester;
	
	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
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
	public String getCompDiv() {
		return compDiv;
	}
	public void setCompDiv(String compDiv) {
		this.compDiv = compDiv;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
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
	
	@Override
	public String toString() {
		return "SA_gradeDTO [snum=" + snum + ", deptCode=" + deptCode + ", lname=" + lname + ", year=" + year
				+ ", prof=" + prof + ", compDiv=" + compDiv + ", score=" + score + ", rating=" + rating + ", grade="
				+ grade + ", yclasS=" + yclasS + ", semester=" + semester + "]";
	}
}
