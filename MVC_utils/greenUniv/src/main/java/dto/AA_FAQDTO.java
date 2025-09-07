package dto;

public class AA_FAQDTO {
	private int id;
	private int what;
	private String comment;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setId(String id) {
		if (id != null)
			this.id = Integer.parseInt(id);
	}
	public int getWhat() {
		return what;
	}
	public void setWhat(int what) {
		this.what = what;
	}
	public void setWhat(String what) {
		if (what != null)
			this.what = Integer.parseInt(what);
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	@Override
	public String toString() {
		return "AA_FAQDTO [id=" + id + ", what=" + what + ", comment=" + comment + "]";
	}
}
