package com.spring.web.vo;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class BoardVO {
	private int bno;
	private String title;
	private int cno;
	private int price;
	private String regDate;
	private int cnt;
	private String content;
	private String unit;
	private String weight;
	private String shipment;
	private String origin;
	private String box;
	
	private String searchType;
	private String searchKeyword;
	private MultipartFile uploadFile;
	private String fileName;

	private int startList;
	private int listSize;
	
	public BoardVO() {
	}

	public BoardVO(int bno, String title, int cno, int price, String regDate, int cnt) {
		super();
		this.bno = bno;
		this.title = title;
		this.cno = cno;
		this.price = price;
		this.regDate = regDate;
		this.cnt = cnt;
	}
	
	

	public BoardVO(int bno, String title, int cno, int price, String regDate, int cnt, String searchType,
			String searchKeyword) {
		super();
		this.bno = bno;
		this.title = title;
		this.cno = cno;
		this.price = price;
		this.regDate = regDate;
		this.cnt = cnt;
		this.searchType = searchType;
		this.searchKeyword = searchKeyword;
	}

	
	public BoardVO(int bno, String title, int cno, int price, String regDate, int cnt, String searchType,
			String searchKeyword, String content, String unit, String weight, String shipment, String origin, String box) {
		super();
		this.bno = bno;
		this.title = title;
		this.cno = cno;
		this.price = price;
		this.regDate = regDate;
		this.cnt = cnt;
		this.searchType = searchType;
		this.searchKeyword = searchKeyword;
		this.content = content;
		this.unit = unit;
		this.weight = weight;
		this.shipment = shipment;
		this.origin = origin;
		this.box = box;
	}

	
	public BoardVO(int bno, String title, int cno, int price, String regDate, int cnt, String content, String unit,
			String weight, String shipment, String origin, String box, String fileName) {
		super();
		this.bno = bno;
		this.title = title;
		this.cno = cno;
		this.price = price;
		this.regDate = regDate;
		this.cnt = cnt;
		this.content = content;
		this.unit = unit;
		this.weight = weight;
		this.shipment = shipment;
		this.origin = origin;
		this.box = box;
		this.fileName = fileName;
	}

	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@JsonIgnore
	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	@JsonIgnore
	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}


	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	

	public int getStartList() {
		return startList;
	}

	public void setStartList(int startList) {
		this.startList = startList;
	}

	public int getListSize() {
		return listSize;
	}

	public void setListSize(int listSize) {
		this.listSize = listSize;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getShipment() {
		return shipment;
	}

	public void setShipment(String shipment) {
		this.shipment = shipment;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getBox() {
		return box;
	}

	public void setBox(String box) {
		this.box = box;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", cno=" + cno + ", price=" + price + ", regDate=" + regDate
				+ ", cnt=" + cnt + ", content=" + content + ", unit=" + unit + ", weight=" + weight + ", shipment="
				+ shipment + ", origin=" + origin + ", box=" + box + ", searchType=" + searchType + ", searchKeyword="
				+ searchKeyword + ", uploadFile=" + uploadFile + ", fileName=" + fileName + ", startList=" + startList
				+ ", listSize=" + listSize + "]";
	}

	
	
}