package dto;

import java.sql.Timestamp;

public class ProductVO {
	private int pseq;
	 private String name;
	 private String kind;
	 private int price;
	 private String content1;
	 private String content2;
	 private String content3;
	 private String image;
	 private String useyn;
	 private String bestyn;
	 
	 private String human;
	 private int caoont;
	 
	 public ProductVO(int pseq, String name, String kind, int price, String content1, String content2, String content3,
			String image, String useyn, String bestyn, String human, int caoont, Timestamp indate) {
		super();
		this.pseq = pseq;
		this.name = name;
		this.kind = kind;
		this.price = price;
		this.content1 = content1;
		this.content2 = content2;
		this.content3 = content3;
		this.image = image;
		this.useyn = useyn;
		this.bestyn = bestyn;
		this.human = human;
		this.caoont = caoont;
		this.indate = indate;
	}
	public String getHuman() {
		return human;
	}
	public void setHuman(String human) {
		this.human = human;
	}
	public int getCaoont() {
		return caoont;
	}
	public void setCaoont(int caoont) {
		this.caoont = caoont;
	}
	private Timestamp indate;
	public int getPseq() {
		return pseq;
	}
	public void setPseq(int pseq) {
		this.pseq = pseq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getContent1() {
		return content1;
	}
	public void setContent1(String content1) {
		this.content1 = content1;
	}
	public String getContent2() {
		return content2;
	}
	public void setContent2(String content2) {
		this.content2 = content2;
	}
	public String getContent3() {
		return content3;
	}
	public void setContent3(String content3) {
		this.content3 = content3;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getUseyn() {
		return useyn;
	}
	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	public String getBestyn() {
		return bestyn;
	}
	public void setBestyn(String bestyn) {
		this.bestyn = bestyn;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}

	 
	 @Override
	public String toString() {
		return "ProductVO [pseq=" + pseq + ", name=" + name + ", kind=" + kind + ", price=" + price + ", content1="
				+ content1 + ", content2=" + content2 + ", content3=" + content3 + ", image=" + image + ", useyn="
				+ useyn + ", bestyn=" + bestyn + ", human=" + human + ", caoont=" + caoont + ", indate=" + indate + "]";
	}
	public ProductVO() {
		// TODO Auto-generated constructor stub
	}
	
	 
	 
}
