package dto;

public class Commu_empDTO {

	private int id;
	private String condition;
	private String nick;
	private String title;
	private String date;
	private int hits;

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
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public void setHits(String hits) {
		if (hits != null) {
			this.hits = Integer.parseInt(hits);
		}
	}
	@Override
	public String toString() {
		return "Commu_empDTO [id=" + id + ", condition=" + condition + ", nick=" + nick + ", title=" + title + ", date="
				+ date + ", hits=" + hits + "]";
	}


}
