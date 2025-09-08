package dto;

public class Coll_scienceDTO {
	private String unitCol;
	private String deptName;
	private String dean;
	private String deptTel;
	private String colcont;
	
	public String getColcont() {
		return colcont;
	}
	public void setColcont(String colcont) {
		this.colcont = colcont;
	}
	public String getUnitCol() {
		return unitCol;
	}
	public void setUnitCol(String unitCol) {
		this.unitCol = unitCol;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getDean() {
		return dean;
	}
	public void setDean(String dean) {
		this.dean = dean;
	}
	public String getDeptTel() {
		return deptTel;
	}
	public void setDeptTel(String deptTel) {
		this.deptTel = deptTel;
	}
	
	@Override
	public String toString() {
		return "Coll_scienceDTO [unitCol=" + unitCol + ", deptName=" + deptName + ", dean=" + dean + ", deptTel="
				+ deptTel + ", colcont=" + colcont + "]";
	}
	
}
