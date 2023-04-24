package dto;

import java.sql.Timestamp;

public class OrderVO {
	private int odseq;
	 private int oseq;
	 private String id; 
	 private Timestamp indate; 
	 private String mname;
	 public OrderVO(int odseq, int oseq, String id, Timestamp indate, String mname, String zipNum, String address,
			String phone, int pseq, String pname, int quantity, int price, String image, String result) {
		super();
		this.odseq = odseq;
		this.oseq = oseq;
		this.id = id;
		this.indate = indate;
		this.mname = mname;
		this.zipNum = zipNum;
		this.address = address;
		this.phone = phone;
		this.pseq = pseq;
		this.pname = pname;
		this.quantity = quantity;
		this.price = price;
		this.image = image;
		this.result = result;
	}
	private String zipNum;
	 private String address;
	 private String phone; 
	 private int pseq;
	 public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	private String pname;
	 private int quantity;
	 private int price; 
	 private String image;
	 private String result;
	public int getOdseq() {
		return odseq;
	}
	public void setOdseq(int odseq) {
		this.odseq = odseq;
	}
	public int getOseq() {
		return oseq;
	}
	public void setOseq(int oseq) {
		this.oseq = oseq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getZipNum() {
		return zipNum;
	}
	public void setZipNum(String zipNum) {
		this.zipNum = zipNum;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getPseq() {
		return pseq;
	}
	public void setPseq(int pseq) {
		this.pseq = pseq;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public OrderVO(int odseq, int oseq, String id, Timestamp indate, String mname, String zipNum, String address,
			String phone, int pseq, String pname, int quantity, int price, String result) {
		super();
		this.odseq = odseq;
		this.oseq = oseq;
		this.id = id;
		this.indate = indate;
		this.mname = mname;
		this.zipNum = zipNum;
		this.address = address;
		this.phone = phone;
		this.pseq = pseq;
		this.pname = pname;
		this.quantity = quantity;
		this.price = price;
		this.result = result;
	} 
	 
	 
	 public OrderVO() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "OrderVO [odseq=" + odseq + ", oseq=" + oseq + ", id=" + id + ", indate=" + indate + ", mname=" + mname
				+ ", zipNum=" + zipNum + ", address=" + address + ", phone=" + phone + ", pseq=" + pseq + ", pname="
				+ pname + ", quantity=" + quantity + ", price=" + price + ", result=" + result + "]";
	}
}
