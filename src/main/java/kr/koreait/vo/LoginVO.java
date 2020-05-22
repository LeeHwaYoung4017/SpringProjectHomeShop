package kr.koreait.vo;

public class LoginVO {
	
	private String id;
	private String pw;
	private String name;
	private String email;
	private String phone;
	private String birth;
	private String gender;
	private String addr;
	
	public LoginVO() {}
	
	public LoginVO(String id, String pw, String name, String email, String phone, String birth,
			String gender, String addr) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.birth = birth;
		this.gender = gender;
		this.addr = addr;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getaddr() {
		return addr;
	}

	public void setaddr(String addr) {
		this.addr = addr;
	}
	
	public String getId() {return id;}
	public void setId(String id) {this.id = id;}
	public String getPw() {return pw;}
	public void setPw(String pw) {this.pw = pw;}
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	public String getEmail() {return email;}
	public void setEmail(String email) {this.email = email;}
	public String getPhone() {return phone;}
	public void setPhone(String phone) {this.phone = phone;}

	@Override
	public String toString() {
		return "LoginVO [id=" + id + ", pw=" + pw + ", name=" + name + ", email=" + email + ", phone=" + phone
				+", birth=" + birth + ", gender=" + gender + ", addr=" + addr + "]";
	}

	

}
