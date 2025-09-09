package dto;

public class AMS_courseDTO {
	private String semester;
	private int snum;
	private String sname;
	private String year;
	private String edept;
	private String deptcode;
	private String lname;
	private String compdiv;
	private String prof;
	private int grade;
	private String application;
	
	public String getSemester() {
		return semester;
	}
	
	public void setSemester(String semester) {
		this.semester = semester;
	}
	
	public int getSnum() {
		return snum;
	}
	
	public void setSnum(int snum) {
		this.snum = snum;
	}
	
	public String getSname() {
		return sname;
	}
	
	public void setSname(String sname) {
		this.sname = sname;
	}
	
	public String getYear() {
		return year;
	}
	
	public void setYear(String year) {
		this.year = year;
	}
	
	public String getEdept() {
		return edept;
	}
	
	public void setEdept(String edept) {
		this.edept = edept;
	}
	
	public String getDeptcode() {
		return deptcode;
	}
	
	public void setDeptcode(String deptcode) {
		this.deptcode = deptcode;
	}
	
	public String getLname() {
		return lname;
	}
	
	public void setLname(String lname) {
		this.lname = lname;
	}
	
	public String getCompdiv() {
		return compdiv;
	}
	
	public void setCompdiv(String compdiv) {
		this.compdiv = compdiv;
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
	
	public String getApplication() {
		return application;
	}
	
	public void setApplication(String application) {
		this.application = application;
	}
	
	@Override
	public String toString() {
		return "AMS_courseDTO [semester=" + semester + ", snum=" + snum + ", sname=" + sname + ", year=" + year
				+ ", edept=" + edept + ", deptcode=" + deptcode + ", lname=" + lname + ", compdiv=" + compdiv
				+ ", prof=" + prof + ", grade=" + grade + ", application=" + application + "]";
	}
}
