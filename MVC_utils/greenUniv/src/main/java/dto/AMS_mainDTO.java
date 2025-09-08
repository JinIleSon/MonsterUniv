package dto;

public class AMS_mainDTO {

	// 학년별 학생 현황(student)
	
	private int egrade;
	private int egradeCount;

	public int getEgrade() {
		return egrade;
	}
	public void setEgrade(int egrade) {
		this.egrade = egrade;
	}
	public void setEgrade(String egrade) {
		if (egrade != null)
			this.egrade = Integer.parseInt(egrade);
	}
	public int getEgradeCount() {
		return egradeCount;
	}
	public void setEgradeCount(int egradeCount) {
		this.egradeCount = egradeCount;
	}
	public void setEgradeCount(String egradeCount) {
		if (egradeCount != null)
			this.egradeCount = Integer.parseInt(egradeCount);
	}
	
	// 학과별 학생 현황(student)

	private String edept;       // 학과
	private int edeptCount; // 학과별 학생수
	
	public String getEdept() {
		return edept;
	}
	public void setEdept(String edept) {
		this.edept = edept;
	}
	public int getEdeptCount() {
		return edeptCount;
	}
	public void setEdeptCount(int edeptCount) {
		this.edeptCount = edeptCount;
	}

	// 학사안내_공지사항(AA_notice)
	
	private int id; 
	private String title; 
	private String nick; 
	private String date;
	
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
	
	// 입학안내_입학상담(Adm_counsel)
	
	private int adm_id;
	private String adm_title;
	private String adm_date;
	private String adm_condition;
	
	public int getAdm_id() {
		return adm_id;
	}
	public void setAdm_id(int adm_id) {
		this.adm_id = adm_id;
	}
	public String getAdm_title() {
		return adm_title;
	}
	public void setAdm_title(String adm_title) {
		this.adm_title = adm_title;
	}
	public String getAdm_date() {
		return adm_date;
	}
	public void setAdm_date(String adm_date) {
		this.adm_date = adm_date;
	}
	public String getAdm_condition() {
		return adm_condition;
	}
	public void setAdm_condition(String adm_condition) {
		this.adm_condition = adm_condition;
	}
	
	@Override
	public String toString() {
		return "AMS_mainDTO [egrade=" + egrade + ", egradeCount=" + egradeCount + ", edept=" + edept + ", edeptCount="
				+ edeptCount + ", id=" + id + ", title=" + title + ", nick=" + nick + ", date=" + date + ", adm_id="
				+ adm_id + ", adm_title=" + adm_title + ", adm_date=" + adm_date + ", adm_condition=" + adm_condition
				+ "]";
	}
	
	
}
