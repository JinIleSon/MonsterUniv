package dto;

public class AMS_mainDTO {

	// 대학 운영 현황(collMaj, lecture, professor, `User`, student)
	private int countDept;
	private int countLname;
	private int countPnum;
	private int countUser;
	private int countStuAll;
	private int countStuLeave;
	private int countStuGradSchool;  // 대학원생
	private int countStuGraduation;  // 졸업생

	public int getCountDept() {
		return countDept;
	}
	public void setCountDept(int countDept) {
		this.countDept = countDept;
	}
	public void setCountDept(String countDept) {
		if (countDept != null) {
			this.countDept = Integer.parseInt(countDept);
		}
	}
	public int getCountLname() {
		return countLname;
	}
	public void setCountLname(int countLname) {
		this.countLname = countLname;
	}
	public void setCountLname(String countLname) {
		if (countLname != null) {
			this.countLname = Integer.parseInt(countLname);
		}
	}
	public int getCountPnum() {
		return countPnum;
	}
	public void setCountPnum(int countPnum) {
		this.countPnum = countPnum;
	}
	public void setCountPnum(String countPnum) {
		if (countPnum != null) {
			this.countPnum = Integer.parseInt(countPnum);
		}
	}
	public int getCountUser() {
		return countUser;
	}
	public void setCountUser(int countUser) {
		this.countUser = countUser;
	}
	public void setCountUser(String countUser) {
		if (countUser != null) {
			this.countUser = Integer.parseInt(countUser);
		}
	}
	public int getCountStuAll() {
		return countStuAll;
	}
	public void setCountStuAll(int countStuAll) {
		this.countStuAll = countStuAll;
	}
	public void setCountStuAll(String countStuAll) {
		if (countStuAll != null) {
			this.countStuAll = Integer.parseInt(countStuAll);
		}
	}
	public int getCountStuLeave() {
		return countStuLeave;
	}
	public void setCountStuLeave(int countStuLeave) {
		this.countStuLeave = countStuLeave;
	}
	public void setCountStuLeave(String countStuLeave) {
		if (countStuLeave != null) {
			this.countStuLeave = Integer.parseInt(countStuLeave);
		}
	}
	public int getCountStuGradSchool() {
		return countStuGradSchool;
	}
	public void setCountStuGradSchool(int countStuGradSchool) {
		this.countStuGradSchool = countStuGradSchool;
	}
	public void setCountStuGradSchool(String countStuGradSchool) {
		if (countStuGradSchool != null) {
			this.countStuGradSchool = Integer.parseInt(countStuGradSchool);
		}
	}
	public int getCountStuGraduation() {
		return countStuGraduation;
	}
	public void setCountStuGraduation(int countStuGraduation) {
		this.countStuGraduation = countStuGraduation;
	}
	public void setCountStuGraduation(String countStuGraduation) {
		if (countStuGraduation != null) {
			this.countStuGraduation = Integer.parseInt(countStuGraduation);
		}
	}

	// 교육 운영 현황(lecture)
	private String openMaj;
	private String deptCode;
	private String lname;
	private String year;
	private String prof;
	private String compDiv;
	private int grade;
	private String room;
	private int nowNum;
	private int maxNum;

	// 추가 컬럼 - 수강률
	private int percent;


	public String getOpenMaj() {
		return openMaj;
	}
	public void setOpenMaj(String openMaj) {
		this.openMaj = openMaj;
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
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public void setGrade(String grade) {
		if (grade != null) {
			this.grade = Integer.parseInt(grade);
		}
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public int getNowNum() {
		return nowNum;
	}
	public void setNowNum(int nowNum) {
		this.nowNum = nowNum;
	}
	public void setNowNum(String nowNum) {
		if (nowNum != null) {
			this.nowNum = Integer.parseInt(nowNum);
		}
	}
	public int getMaxNum() {
		return maxNum;
	}
	public void setMaxNum(int maxNum) {
		this.maxNum = maxNum;
	}
	public void setMaxNum(String maxNum) {
		if (maxNum != null) {
			this.maxNum = Integer.parseInt(maxNum);
		}
	}
	public int getPercent() {
		return percent;
	}
	public void setPercent(int percent) {
		this.percent = percent;
	}
	public void setPercent(String percent) {
		if (percent != null) {
			this.percent = Integer.parseInt(percent);
		}
	}



	// 학년별 학생 현황(student)

	private int egrade;
	private int egradeCount;

	public int getEgrade() {
		return egrade;
	}
	public void setEgrade(int egrade) {
		this.egrade = egrade;
	}
	public void setEgrade(String egrade) {
		if (egrade != null) {
			this.egrade = Integer.parseInt(egrade);
		}
	}
	public int getEgradeCount() {
		return egradeCount;
	}
	public void setEgradeCount(int egradeCount) {
		this.egradeCount = egradeCount;
	}
	public void setEgradeCount(String egradeCount) {
		if (egradeCount != null) {
			this.egradeCount = Integer.parseInt(egradeCount);
		}
	}

	// 학과별 학생 현황(student)

	private String edept;       // 학과
	private int edeptCount; // 학과별 학생수

	public String getEdept() {
		return edept;
	}
	public void setEdept(String edept) {
		this.edept = edept;
	}
	public int getEdeptCount() {
		return edeptCount;
	}
	public void setEdeptCount(int edeptCount) {
		this.edeptCount = edeptCount;
	}

	// 학사안내_공지사항(AA_notice)

	private int id;
	private String title;
	private String nick;
	private String date;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setId(String id) {
		if (id != null) {
			this.id = Integer.parseInt(id);
		}
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	// 입학안내_입학상담(Adm_counsel)

	private int adm_id;
	private String adm_title;
	private String adm_date;
	private String adm_condition;

	public int getAdm_id() {
		return adm_id;
	}
	public void setAdm_id(int adm_id) {
		this.adm_id = adm_id;
	}
	public String getAdm_title() {
		return adm_title;
	}
	public void setAdm_title(String adm_title) {
		this.adm_title = adm_title;
	}
	public String getAdm_date() {
		return adm_date;
	}
	public void setAdm_date(String adm_date) {
		this.adm_date = adm_date;
	}
	public String getAdm_condition() {
		return adm_condition;
	}
	public void setAdm_condition(String adm_condition) {
		this.adm_condition = adm_condition;
	}

	@Override
	public String toString() {
		return "AMS_mainDTO [openMaj=" + openMaj + ", deptCode=" + deptCode + ", lname=" + lname + ", year=" + year
				+ ", prof=" + prof + ", compDiv=" + compDiv + ", grade=" + grade + ", room=" + room + ", nowNum="
				+ nowNum + ", maxNum=" + maxNum + ", percent=" + percent + ", egrade=" + egrade + ", egradeCount="
				+ egradeCount + ", edept=" + edept + ", edeptCount=" + edeptCount + ", id=" + id + ", title=" + title
				+ ", nick=" + nick + ", date=" + date + ", adm_id=" + adm_id + ", adm_title=" + adm_title
				+ ", adm_date=" + adm_date + ", adm_condition=" + adm_condition + "]";
	}


}
