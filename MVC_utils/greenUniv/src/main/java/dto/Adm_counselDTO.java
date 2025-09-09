package dto;

public class Adm_counselDTO {
	private int id;
	private String classify;
	private String title;
	private String nick;
	private String date;
	private String condition;
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
	public String getClassify() {
		return classify;
	}
	public void setClassify(String classify) {
		this.classify = classify;
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
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	@Override
	public String toString() {
		return "Adm_counselDTO [id=" + id + ", classify=" + classify + ", title=" + title + ", nick=" + nick + ", date="
				+ date + ", condition=" + condition + "]";
	}
	
}
