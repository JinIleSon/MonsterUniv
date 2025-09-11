package dto;

public class CAD_deptDTO {
	private String unitcol;
	private String deptname;
	private String engname;
	private String estyear;
	private String dean;
	private String depttel;
	private String deptoff;

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
	public String getEngname() {
		return engname;
	}
	public void setEngname(String engname) {
		this.engname = engname;
	}
	public String getEstyear() {
		return estyear;
	}
	public void setEstyear(String estyear) {
		this.estyear = estyear;
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
	public String getDeptoff() {
		return deptoff;
	}
	public void setDeptoff(String deptoff) {
		this.deptoff = deptoff;
	}

	@Override
	public String toString() {
		return "CAD_deptDTO [unitcol=" + unitcol + ", deptname=" + deptname + ", engname=" + engname + ", estyear="
				+ estyear + ", dean=" + dean + ", depttel=" + depttel + ", deptoff=" + deptoff + "]";
	}

}
