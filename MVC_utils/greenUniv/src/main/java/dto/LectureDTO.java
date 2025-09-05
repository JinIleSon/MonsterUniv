package dto;

public class LectureDTO {
	private String deptcode;
	private String year;
	private String semester;
	private String compdiv;
	private String lname;
	private String lexpl;
	private String opencol;
	private String openmaj;
	private int grade;
	private String prof;
	private String yclass;
	private String yclase;
	private String times;
	private String timee;
	private String timed;
	private String evaway;
	private String book;
	private String room;
	private int maxnum;
	
	public String getDeptcode() {
		return deptcode;
	}
	
	public void setDeptcode(String deptcode) {
		this.deptcode = deptcode;
	}
	
	public String getYear() {
		return year;
	}
	
	public void setYear(String year) {
		this.year = year;
	}
	
	public String getSemester() {
		return semester;
	}
	
	public void setSemester(String semester) {
		this.semester = semester;
	}
	
	public String getCompdiv() {
		return compdiv;
	}
	
	public void setCompdiv(String compdiv) {
		this.compdiv = compdiv;
	}
	
	public String getLname() {
		return lname;
	}
	
	public void setLname(String lname) {
		this.lname = lname;
	}
	
	public String getLexpl() {
		return lexpl;
	}
	
	public void setLexpl(String lexpl) {
		this.lexpl = lexpl;
	}
	
	public String getOpencol() {
		return opencol;
	}
	
	public void setOpencol(String opencol) {
		this.opencol = opencol;
	}
	
	public String getOpenmaj() {
		return openmaj;
	}
	
	public void setOpenmaj(String openmaj) {
		this.openmaj = openmaj;
	}
	
	public int getGrade() {
		return grade;
	}
	
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	public void setGrade(String grade) {
		if(grade != null) {
			this.grade = Integer.parseInt(grade);
		}	
	}
	
	public String getProf() {
		return prof;
	}
	
	public void setProf(String prof) {
		this.prof = prof;
	}
	
	public String getYclass() {
		return yclass;
	}
	
	public void setYclass(String yclass) {
		this.yclass = yclass;
	}
	
	public String getYclase() {
		return yclase;
	}
	
	public void setYclase(String yclase) {
		this.yclase = yclase;
	}
	
	public String getTimes() {
		return times;
	}
	
	public void setTimes(String times) {
		this.times = times;
	}
	
	public String getTimee() {
		return timee;
	}
	
	public void setTimee(String timee) {
		this.timee = timee;
	}
	
	public String getTimed() {
		return timed;
	}
	
	public void setTimed(String timed) {
		this.timed = timed;
	}
	
	public String getEvaway() {
		return evaway;
	}
	
	public void setEvaway(String evaway) {
		this.evaway = evaway;
	}
	
	public String getBook() {
		return book;
	}
	
	public void setBook(String book) {
		this.book = book;
	}
	
	public String getRoom() {
		return room;
	}
	
	public void setRoom(String room) {
		this.room = room;
	}
	
	public int getMaxnum() {
		return maxnum;
	}
	
	public void setMaxnum(int maxnum) {
		this.maxnum = maxnum;
	}

	@Override
	public String toString() {
		return "LectureDTO [deptcode=" + deptcode + ", year=" + year + ", semester=" + semester + ", compdiv=" + compdiv
				+ ", lname=" + lname + ", lexpl=" + lexpl + ", opencol=" + opencol + ", openmaj=" + openmaj + ", grade="
				+ grade + ", prof=" + prof + ", yclass=" + yclass + ", yclase=" + yclase + ", times=" + times
				+ ", timee=" + timee + ", timed=" + timed + ", evaway=" + evaway + ", book=" + book + ", room=" + room
				+ ", maxnum=" + maxnum + "]";
	}
}
