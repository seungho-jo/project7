package ceo;

public class Member {
	private String id;
	private String pass;
	private String name;
	private String ceo_ckeck;
	private long ceo_num;
	private String bs_name;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(String id, String pass, String name, String ceo_ckeck, int ceo_num, String bs_name) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.ceo_ckeck = ceo_ckeck;
		this.ceo_num = ceo_num;
		this.bs_name = bs_name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getCeo_ckeck() {
		return ceo_ckeck;
	}
	public void setCeo_ckeck(String ceo_ckeck) {
		this.ceo_ckeck = ceo_ckeck;
	}
	public long getCeo_num() {
		return ceo_num;
	}
	public void setCeo_num(long ceo_num) {
		this.ceo_num = ceo_num;
	}
	public String getBs_name() {
		return bs_name;
	}
	public void setBs_name(String bs_name) {
		this.bs_name = bs_name;
	}
	
}
