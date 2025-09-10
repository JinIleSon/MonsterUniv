package dto;

public class CL_galleryDTO {

	private int id;
	private String imageroute;
	private String title;
	private int hits;
	private String where;
	private String regdate;


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
	public String getImageroute() {
		return imageroute;
	}
	public void setImageroute(String imageroute) {
		this.imageroute = imageroute;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getWhere() {
		return where;
	}
	public void setWhere(String where) {
		this.where = where;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "CL_galleryDTO [id=" + id + ", imageroute=" + imageroute + ", title=" + title + ", hits=" + hits
				+ ", where=" + where + ", regdate=" + regdate + "]";
	}
}
