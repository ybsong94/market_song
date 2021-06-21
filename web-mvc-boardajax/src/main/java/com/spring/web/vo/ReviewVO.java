package com.spring.web.vo;

public class ReviewVO {
   private int rno;
   private int bno;
   private int uno;
   private String comment;
   private String name;
   private String regDate;
   
   public ReviewVO() {
   }

public ReviewVO(int rno, int bno, int uno, String comment, String name, String regDate) {
	super();
	this.rno = rno;
	this.bno = bno;
	this.uno = uno;
	this.comment = comment;
	this.name = name;
	this.regDate = regDate;
}

public int getRno() {
	return rno;
}

public void setRno(int rno) {
	this.rno = rno;
}

public int getBno() {
	return bno;
}

public void setBno(int bno) {
	this.bno = bno;
}

public int getUno() {
	return uno;
}

public void setUno(int uno) {
	this.uno = uno;
}

public String getComment() {
	return comment;
}

public void setComment(String comment) {
	this.comment = comment;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getRegDate() {
	return regDate;
}

public void setRegDate(String regDate) {
	this.regDate = regDate;
}

@Override
public String toString() {
	return "ReviewVO [rno=" + rno + ", bno=" + bno + ", uno=" + uno + ", comment=" + comment + ", name=" + name
			+ ", regDate=" + regDate + "]";
}
   
   

}