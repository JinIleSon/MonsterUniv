package dto;

public class FileDTO {
	private String colimgo;
	private String colimgs;
	
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
		return "FileDTO [colimgo=" + colimgo + ", colimgs=" + colimgs + "]";
	}
	
	
}
