package dto;

public class ProfessorRegisterDTO {
	 private String pnum;
	 private String pname;
	 private String pgender;
	 private String ptel;
	 private String pzip;
	 private String paddr1;
	 private String paddr2;
	 private String pregno;
	 private String pengname;
	 private String pnation;
	 private String pemail;
	 private String gradun;
	 private String graddate;
	 private String takecol;
	 private String takedept;
	 private String major;
	 private String degree;
	 private String appdate;
	 private String role;
	 private String condition;
	 
	 public String getPnum() {
		 return pnum;
	 }
	 public void setPnum(String pnum) {
		 this.pnum = pnum;
	 }
	 public String getPname() {
		 return pname;
	 }
	 public void setPname(String pname) {
		 this.pname = pname;
	 }
	 public String getPgender() {
		 return pgender;
	 }
	 public void setPgender(String pgender) {
		 this.pgender = pgender;
	 }
	 public String getPtel() {
		 return ptel;
	 }
	 public void setPtel(String ptel) {
		 this.ptel = ptel;
	 }
	 public String getPzip() {
		 return pzip;
	 }
	 public void setPzip(String pzip) {
		 this.pzip = pzip;
	 }
	 public String getPaddr1() {
		 return paddr1;
	 }
	 public void setPaddr1(String paddr1) {
		 this.paddr1 = paddr1;
	 }
	 public String getPaddr2() {
		 return paddr2;
	 }
	 public void setPaddr2(String paddr2) {
		 this.paddr2 = paddr2;
	 }
	 public String getPregno() {
		 return pregno;
	 }
	 public void setPregno(String pregno) {
		 this.pregno = pregno;
	 }
	 public String getPengname() {
		 return pengname;
	 }
	 public void setPengname(String pengname) {
		 this.pengname = pengname;
	 }
	 public String getPnation() {
		 return pnation;
	 }
	 public void setPnation(String pnation) {
		 this.pnation = pnation;
	 }
	 public String getPemail() {
		 return pemail;
	 }
	 public void setPemail(String pemail) {
		 this.pemail = pemail;
	 }
	 public String getGradun() {
		 return gradun;
	 }
	 public void setGradun(String gradun) {
		 this.gradun = gradun;
	 }
	 public String getGraddate() {
		 return graddate;
	 }
	 public void setGraddate(String graddate) {
		 this.graddate = graddate;
	 }
	 public String getTakecol() {
		 return takecol;
	 }
	 public void setTakecol(String takecol) {
		 this.takecol = takecol;
	 }
	 public String getTakedept() {
		 return takedept;
	 }
	 public void setTakedept(String takedept) {
		 this.takedept = takedept;
	 }
	 public String getMajor() {
		 return major;
	 }
	 public void setMajor(String major) {
		 this.major = major;
	 }
	 public String getDegree() {
		 return degree;
	 }
	 public void setDegree(String degree) {
		 this.degree = degree;
	 }
	 public String getAppdate() {
		 return appdate;
	 }
	 public void setAppdate(String appdate) {
		 this.appdate = appdate;
	 }
	 public String getRole() {
		 return role;
	 }
	 public void setRole(String role) {
		 this.role = role;
	 }
	 public String getCondition() {
		 return condition;
	 }
	 public void setCondition(String condition) {
		 this.condition = condition;
	 }
	 
	 @Override
	 public String toString() {
		return "ProfessorDTO [pnum=" + pnum + ", pname=" + pname + ", pgender=" + pgender + ", ptel=" + ptel + ", pzip="
				+ pzip + ", paddr1=" + paddr1 + ", paddr2=" + paddr2 + ", pregno=" + pregno + ", pengname=" + pengname
				+ ", pnation=" + pnation + ", pemail=" + pemail + ", gradun=" + gradun + ", graddate=" + graddate
				+ ", takecol=" + takecol + ", takedept=" + takedept + ", major=" + major + ", degree=" + degree
				+ ", appdate=" + appdate + ", role=" + role + ", condition=" + condition + "]";
	 }
	
}
