package dto;

public class SA_curriculumDTO {

	private String year;
	private String cCode;
	private String compDiv;
	private String lname;
	private int grade;
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getcCode() {
		return cCode;
	}
	public void setcCode(String cCode) {
		this.cCode = cCode;
	}
	public String getCompDiv() {
		return compDiv;
	}
	public void setCompDiv(String compDiv) {
		this.compDiv = compDiv;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public void setGrade(String grade) {
		if (grade != null)
			this.grade = Integer.parseInt(grade);
	}
	@Override
	public String toString() {
		return "SA_curriculumDTO [year=" + year + ", cCode=" + cCode + ", compDiv=" + compDiv + ", lname=" + lname
				+ ", grade=" + grade + "]";
	}
	
	
}
