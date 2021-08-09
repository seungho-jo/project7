package Member;

import java.util.Date;

public class Member {
	private String email;
	private String pass;
	private String name;
	private Date mdate;
	
	
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	// 로그인
	public Member(String email, String pass) {
		super();
		this.email = email;
		this.pass = pass;
	}
	
	//회원가입
	public Member(String email, String pass, String name) {
		super();
		this.email = email;
		this.pass = pass;
		this.name = name;
	}

	public Member(String email, String pass, String name, Date mdate) {
		super();
		this.email = email;
		this.pass = pass;
		this.name = name;
		this.mdate = mdate;
	}

	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getMdate() {
		return mdate;
	}
	public void setMdate(Date mdate) {
		this.mdate = mdate;
	}
}
