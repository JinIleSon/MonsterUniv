package dto;

public class AMS_studentDTO {
	private int snum;
	private String sregno;
	private String sname;
	private String sengname;
	private String sgender;
	private String snation;
	private String stel;
	private String semail;
	private String szip;
	private String saddr1;
	private String saddr2;
	private int eyear;
	private int gyear;
	private String esort;
	private String ecol;
	private String edept;
	private String egrade;
	private String eterm;
	private String advprof;
	private String role;
	private String condition;
	
	public int getSnum() {
		return snum;
	}
	
	public void setSnum(int snum) {
		this.snum = snum;
	}
	
	public void setSnum(String snum) {
		if(snum != null) {
			this.snum = Integer.parseInt(snum);
		}
	}
	
	public String getSregno() {
		return sregno;
	}
	
	public void setSregno(String sregno) {
		this.sregno = sregno;
	}
	
	public String getSname() {
		return sname;
	}
	
	public void setSname(String sname) {
		this.sname = sname;
	}
	
	public String getSengname() {
		return sengname;
	}
	
	public void setSengname(String sengname) {
		this.sengname = sengname;
	}
	
	public String getSgender() {
		return sgender;
	}
	
	public void setSgender(String sgender) {
		this.sgender = sgender;
	}
	
	public String getSnation() {
		return snation;
	}
	
	public void setSnation(String snation) {
		this.snation = snation;
	}
	
	public String getStel() {
		return stel;
	}
	
	public void setStel(String stel) {
		this.stel = stel;
	}
	
	public String getSemail() {
		return semail;
	}
	
	public void setSemail(String semail) {
		this.semail = semail;
	}
	
	public String getSzip() {
		return szip;
	}
	
	public void setSzip(String szip) {
		this.szip = szip;
	}
	
	public String getSaddr1() {
		return saddr1;
	}
	
	public void setSaddr1(String saddr1) {
		this.saddr1 = saddr1;
	}
	
	public String getSaddr2() {
		return saddr2;
	}
	
	public void setSaddr2(String saddr2) {
		this.saddr2 = saddr2;
	}
	
	public int getEyear() {
		return eyear;
	}
	
	public void setEyear(int eyear) {
		this.eyear = eyear;
	}
	
	public void setEyear(String eyear) {
		if(eyear != null) {
			this.eyear = Integer.parseInt(eyear);
		}
	}
	
	public int getGyear() {
		return gyear;
	}
	
	public void setGyear(int gyear) {
		this.gyear = gyear;
	}
	
	public void setGyear(String gyear) {
		if(gyear != null) {
			this.gyear = Integer.parseInt(gyear);
		}
	}
	
	public String getEsort() {
		return esort;
	}
	
	public void setEsort(String esort) {
		this.esort = esort;
	}
	
	public String getEcol() {
		return ecol;
	}
	
	public void setEcol(String ecol) {
		this.ecol = ecol;
	}
	
	public String getEdept() {
		return edept;
	}
	
	public void setEdept(String edept) {
		this.edept = edept;
	}
	
	public String getEgrade() {
		return egrade;
	}
	
	public void setEgrade(String egrade) {
		this.egrade = egrade;
	}
	
	public String getEterm() {
		return eterm;
	}
	
	public void setEterm(String eterm) {
		this.eterm = eterm;
	}
	
	public String getAdvprof() {
		return advprof;
	}
	
	public void setAdvprof(String advprof) {
		this.advprof = advprof;
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
		return "AMS_studentDTO [snum=" + snum + ", sregno=" + sregno + ", sname=" + sname + ", sengname=" + sengname
				+ ", sgender=" + sgender + ", snation=" + snation + ", stel=" + stel + ", semail=" + semail + ", szip="
				+ szip + ", saddr1=" + saddr1 + ", saddr2=" + saddr2 + ", eyear=" + eyear + ", gyear=" + gyear
				+ ", esort=" + esort + ", ecol=" + ecol + ", edept=" + edept + ", egrade=" + egrade + ", eterm=" + eterm
				+ ", advprof=" + advprof + ", role=" + role + ", condition=" + condition + "]";
	}
}
