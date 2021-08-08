package ceo;

public class Shop {
	private String shop_code;
	private String shop_name;
	private String shop_zipcode;
	private String shop_addr;
	private String shop_phone;
	private String id;
	private String openTime;
	private String endTime;
	private String category;
	private long ceo_num;
	private String bs_name;
	public Shop() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Shop(String shop_code, String shop_name, String shop_zipcode, String shop_addr, String shop_phone, String id,
			String openTime, String endTime, String category, long ceo_num, String bs_name) {
		super();
		this.shop_code = shop_code;
		this.shop_name = shop_name;
		this.shop_zipcode = shop_zipcode;
		this.shop_addr = shop_addr;
		this.shop_phone = shop_phone;
		this.id = id;
		this.openTime = openTime;
		this.endTime = endTime;
		this.category = category;
		this.ceo_num = ceo_num;
		this.bs_name = bs_name;
	}
	public String getShop_code() {
		return shop_code;
	}
	public void setShop_code(String shop_code) {
		this.shop_code = shop_code;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getShop_zipcode() {
		return shop_zipcode;
	}
	public void setShop_zipcode(String shop_zipcode) {
		this.shop_zipcode = shop_zipcode;
	}
	public String getShop_addr() {
		return shop_addr;
	}
	public void setShop_addr(String shop_addr) {
		this.shop_addr = shop_addr;
	}
	public String getShop_phone() {
		return shop_phone;
	}
	public void setShop_phone(String shop_phone) {
		this.shop_phone = shop_phone;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOpenTime() {
		return openTime;
	}
	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
