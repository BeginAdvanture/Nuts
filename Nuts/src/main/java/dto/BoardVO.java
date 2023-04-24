package dto;

import java.sql.Timestamp;

public class BoardVO {
   private int num;
   @Override
   public String toString() {
      return "BoardVO [num=" + num + ", name=" + name + ", email=" + email + ", pass=" + pass + ", title=" + title
            + ", content=" + content + ", readcount=" + readcount + ", writedate=" + writedate + ", image=" + image
            + ", ref=" + ref + ", re_step=" + re_step + ", re_level=" + re_level + "]";
   }
   private String name;
   private String email;
   private String pass;
   private String title;
   private String content;
   private int readcount;
   private Timestamp writedate;
   private String image;
    private int ref;
    private int re_step;
    public int getRef() {
      return ref;
   }
   public void setRef(int ref) {
      this.ref = ref;
   }
   public int getRe_step() {
      return re_step;
   }
   public void setRe_step(int re_step) {
      this.re_step = re_step;
   }
   public int getRe_level() {
      return re_level;
   }
   public void setRe_level(int re_level) {
      this.re_level = re_level;
   }
   private int re_level;

    
    
    
    
    
   
   public String getImage() {
      return image;
   }
   public void setImage(String image) {
      this.image = image;
   }
   public int getNum() {
      return num;
   }
   public void setNum(int num) {
      this.num = num;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
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
   public String getTitle() {
      return title;
   }
   public void setTitle(String title) {
      this.title = title;
   }
   public String getContent() {
      return content;
   }
   public void setContent(String content) {
      this.content = content;
   }
   public int getReadcount() {
      return readcount;
   }
   public void setReadcount(int readcount) {
      this.readcount = readcount;
   }
   public Timestamp getWritedate() {
      return writedate;
   }
   public void setWritedate(Timestamp writedate) {
      this.writedate = writedate;
   }
   
   
}