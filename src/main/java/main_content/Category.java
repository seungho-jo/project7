package main_content;

public class Category {
	String shopcode;
	String kind;
	public Category(String shopcode, String kind) {
		super();
		this.shopcode = shopcode;
		this.kind = kind;
	}
	public Category(String kind) {
		super();
		this.kind = kind;
	}
	public String getShopcode() {
		return shopcode;
	}
	public void setShopcode(String shopcode) {
		this.shopcode = shopcode;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	
	
}
