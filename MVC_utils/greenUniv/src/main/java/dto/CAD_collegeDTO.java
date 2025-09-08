package dto;

public class CAD_collegeDTO {
	private String colname;
	private String coleng;
	private String coltit;
	private String colcont;
	private String colimgo;
	private String colimgs;
	
	public String getColname() {
		return colname;
	}
	public void setColname(String colname) {
		this.colname = colname;
	}
	public String getColeng() {
		return coleng;
	}
	public void setColeng(String coleng) {
		this.coleng = coleng;
	}
	public String getColtit() {
		return coltit;
	}
	public void setColtit(String coltit) {
		this.coltit = coltit;
	}
	public String getColcont() {
		return colcont;
	}
	public void setColcont(String colcont) {
		this.colcont = colcont;
	}
	public String getColimgo() {
		return colimgo;
	}
	public void setColimgo(String colimgo) {
		this.colimgo = colimgo;
	}
	public String getColimgs() {
		return colimgs;
	}
	public void setColimgs(String colimgs) {
		this.colimgs = colimgs;
	}
	
	@Override
	public String toString() {
		return "CAD_collegeDTO [colname=" + colname + ", coleng=" + coleng + ", coltit=" + coltit + ", colcont="
				+ colcont + ", colimgo=" + colimgo + ", colimgs=" + colimgs + "]";
	}
	
	
}
