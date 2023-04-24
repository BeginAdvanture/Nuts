package dto;

import java.sql.Timestamp;

public class CartVO {
	 private int cseq;
	 private String id; 
	 private int pseq;
	 private String mname;
	 private String pname;
	 private int quantity;
	 private int price;
	 private String image;
	 private Timestamp indate;
	public int getCseq() {
		return cseq;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setCseq(int cseq) {
		this.cseq = cseq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPseq() {
		return pseq;
	}
	public void setPseq(int pseq) {
		this.pseq = pseq;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
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
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	@Override
	public String toString() {
		return "CartVO [cseq=" + cseq + ", id=" + id + ", pseq=" + pseq + ", mname=" + mname + ", pname=" + pname
				+ ", quantity=" + quantity + ", price=" + price + ", indate=" + indate + "]";
	}


	 public CartVO(int cseq, String id, int pseq, String mname, String pname, int quantity, int price, String image,
			Timestamp indate) {
		super();
		this.cseq = cseq;
		this.id = id;
		this.pseq = pseq;
		this.mname = mname;
		this.pname = pname;
		this.quantity = quantity;
		this.price = price;
		this.image = image;
		this.indate = indate;
	}
	public CartVO() {
		// TODO Auto-generated constructor stub
	}
	public CartVO(int cseq, String id, int pseq, String mname, String pname, int quantity, int price,
			Timestamp indate) {
		super();
		this.cseq = cseq;
		this.id = id;
		this.pseq = pseq;
		this.mname = mname;
		this.pname = pname;
		this.quantity = quantity;
		this.price = price;
		this.indate = indate;
	}
}
