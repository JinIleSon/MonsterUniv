package dto;

public class Commu_freeDTO {
	private int id;
	private String title;
	private String nick;
	private String date;
	private int hits;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
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
		if (hits != null)
			this.hits = Integer.parseInt(hits);
	}
	@Override
	public String toString() {
		return "Commu_freeDTO [id=" + id + ", title=" + title + ", nick=" + nick + ", date=" + date + ", hits=" + hits
				+ "]";
	}
	
	
}
