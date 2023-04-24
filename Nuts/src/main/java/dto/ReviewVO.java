package dto;

import java.sql.Timestamp;

public class ReviewVO {
	private int seq;
	private String id;
	private int pseq;
	private String content;
	private String pname;

	private Timestamp indate;

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Timestamp getIndate() {
		return indate;
	}

	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}

	@Override
	public String toString() {
		return "ReviewVO [seq=" + seq + ", id=" + id + ", pseq=" + pseq + ", content=" + content + ", pname=" + pname
				+ ", indate=" + indate + "]";
	}

	public ReviewVO(int seq, String id, int pseq, String content, String pname, Timestamp indate) {
		super();
		this.seq = seq;
		this.id = id;
		this.pseq = pseq;
		this.content = content;
		this.pname = pname;
		this.indate = indate;
	}
	
	
	
	
	public ReviewVO() {
		// TODO Auto-generated constructor stub
	}
}
