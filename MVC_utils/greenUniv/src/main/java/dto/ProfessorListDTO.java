package dto;

public class ProfessorListDTO {
	
	private String pnum;       
	private String pname;      
	private String pid;        
	private String ptel;       
	private String pemail;     
	private String department; 
	private String prank;      
	private String pstatus;    
	private String pdate;      
	
	public String getPnum() {
		return pnum;
	}
	
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	
	public String getPname() {
		return pname;
	}
	
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	public String getPid() {
		return pid;
	}
	
	public void setPid(String pid) {
		this.pid = pid;
	}
	
	public String getPtel() {
		return ptel;
	}
	
	public void setPtel(String ptel) {
		this.ptel = ptel;
	}
	
	public String getPemail() {
		return pemail;
	}
	
	public void setPemail(String pemail) {
		this.pemail = pemail;
	}
	
	public String getDepartment() {
		return department;
	}
	
	public void setDepartment(String department) {
		this.department = department;
	}
	
	public String getPrank() {
		return prank;
	}
	
	public void setPrank(String prank) {
		this.prank = prank;
	}
	
	public String getPstatus() {
		return pstatus;
	}
	
	public void setPstatus(String pstatus) {
		this.pstatus = pstatus;
	}
	
	public String getPdate() {
		return pdate;
	}
	
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	
	@Override
	public String toString() {
		return "ProfessorDTO [pnum=" + pnum + ", pname=" + pname + ", pid=" + pid + ", ptel=" + ptel + ", pemail="
				+ pemail + ", department=" + department + ", prank=" + prank + ", pstatus=" + pstatus + ", pdate="
				+ pdate + "]";
	}
}
