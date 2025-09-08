package dto;

public class CAD_deptListDTO {
	private int deptnum;
	private String unitcol;
	private String deptname;
	private String dean;
	private String depttel;
	private int proCount;
	private int stuCount;
	private int lecCount;
	
	public int getDeptnum() {
		return deptnum;
	}
	public void setDeptnum(int deptnum) {
		this.deptnum = deptnum;
	}
	public String getUnitcol() {
		return unitcol;
	}
	public void setUnitcol(String unitcol) {
		this.unitcol = unitcol;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getDean() {
		return dean;
	}
	public void setDean(String dean) {
		this.dean = dean;
	}
	public String getDepttel() {
		return depttel;
	}
	public void setDepttel(String depttel) {
		this.depttel = depttel;
	}
	public int getProCount() {
		return proCount;
	}
	public void setProCount(int proCount) {
		this.proCount = proCount;
	}
	public int getStuCount() {
		return stuCount;
	}
	public void setStuCount(int stuCount) {
		this.stuCount = stuCount;
	}
	public int getLecCount() {
		return lecCount;
	}
	public void setLecCount(int lecCount) {
		this.lecCount = lecCount;
	}
	
	@Override
	public String toString() {
		return "CAD_deptListDTO [deptnum=" + deptnum + ", unitcol=" + unitcol + ", deptname=" + deptname + ", dean="
				+ dean + ", depttel=" + depttel + ", proCount=" + proCount + ", stuCount=" + stuCount + ", lecCount="
				+ lecCount + "]";
	}
	
	
}
