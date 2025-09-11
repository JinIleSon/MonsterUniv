package dto;

public class UserDTO {
	 private String identification;
	    private String password;
	    private String nickname;
	    private String phone;
	    private String email;
	    private String address;
	    private String role;

	    public UserDTO() {}

	    public UserDTO(String identification, String password, String nickname,
	                   String phone, String email, String address, String role) {
	        this.identification = identification;
	        this.password = password;
	        this.nickname = nickname;
	        this.phone = phone;
	        this.email = email;
	        this.address = address;
	        this.role = role;
	    }

	    public String getIdentification() { return identification; }
	    public void setIdentification(String identification) { this.identification = identification; }

	    public String getPassword() { return password; }
	    public void setPassword(String password) { this.password = password; }

	    public String getNickname() { return nickname; }
	    public void setNickname(String nickname) { this.nickname = nickname; }

	    public String getPhone() { return phone; }
	    public void setPhone(String phone) { this.phone = phone; }

	    public String getEmail() { return email; }
	    public void setEmail(String email) { this.email = email; }

	    public String getAddress() { return address; }
	    public void setAddress(String address) { this.address = address; }

	    public String getRole() { return role; }
	    public void setRole(String role) { this.role = role; }
}
