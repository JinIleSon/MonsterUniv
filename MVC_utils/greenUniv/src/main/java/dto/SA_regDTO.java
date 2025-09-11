package dto;

public class SA_regDTO {
	private String deptCode;
	private String year;
	private String semester;
	private String compDiv;
	private String lname;
	private String lexpl;
	private String openCol;
	private String openMaj;
	private int grade;
	private String prof;
	private String yclasS;
	private String yclasE;
	private String timeS;
	private String timeE;
	private String timeD;
	private String evaWay;
	private String book;
	private String room;
	private int maxNum;
	private int nowNum;
	private String lecture_hash;

	public String getDeptCode() {
		return deptCode;
	}

	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
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

	public String getLexpl() {
		return lexpl;
	}

	public void setLexpl(String lexpl) {
		this.lexpl = lexpl;
	}

	public String getOpenCol() {
		return openCol;
	}

	public void setOpenCol(String openCol) {
		this.openCol = openCol;
	}

	public String getOpenMaj() {
		return openMaj;
	}

	public void setOpenMaj(String openMaj) {
		this.openMaj = openMaj;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getProf() {
		return prof;
	}

	public void setProf(String prof) {
		this.prof = prof;
	}

	public String getYclasS() {
		return yclasS;
	}

	public void setYclasS(String yclasS) {
		this.yclasS = yclasS;
	}

	public String getYclasE() {
		return yclasE;
	}

	public void setYclasE(String yclasE) {
		this.yclasE = yclasE;
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

	public String getEvaWay() {
		return evaWay;
	}

	public void setEvaWay(String evaWay) {
		this.evaWay = evaWay;
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

	public int getMaxNum() {
		return maxNum;
	}

	public void setMaxNum(int maxNum) {
		this.maxNum = maxNum;
	}

	public int getNowNum() {
		return nowNum;
	}

	public void setNowNum(int nowNum) {
		this.nowNum = nowNum;
	}

	public String getLecture_hash() {
		return lecture_hash;
	}

	public void setLecture_hash(String lecture_hash) {
		this.lecture_hash = lecture_hash;
	}

	@Override
	public String toString() {
		return "SA_regDTO [deptCode=" + deptCode + ", year=" + year + ", semester=" + semester + ", compDiv=" + compDiv
				+ ", lname=" + lname + ", lexpl=" + lexpl + ", openCol=" + openCol + ", openMaj=" + openMaj + ", grade="
				+ grade + ", prof=" + prof + ", yclasS=" + yclasS + ", yclasE=" + yclasE + ", timeS=" + timeS
				+ ", timeE=" + timeE + ", timeD=" + timeD + ", evaWay=" + evaWay + ", book=" + book + ", room=" + room
				+ ", maxNum=" + maxNum + ", nowNum=" + nowNum + ", lecture_hash=" + lecture_hash + "]";
	}
}
