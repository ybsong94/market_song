package com.spring.web.vo;

public class CartVO {
	private int cartNo;
	private int uno;
	private int bno;
	private int price;
	private String shipment;
	private int stock;
	private String addDate;
	
	public CartVO() {
	}

	public CartVO(int cartNo, int uno, int bno, int price, String shipment, int stock, String addDate) {
		super();
		this.cartNo = cartNo;
		this.uno = uno;
		this.bno = bno;
		this.price = price;
		this.shipment = shipment;
		this.stock = stock;
		this.addDate = addDate;
	}

	public int getCartNo() {
		return cartNo;
	}

	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}

	public int getUno() {
		return uno;
	}

	public void setUno(int uno) {
		this.uno = uno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getShipment() {
		return shipment;
	}

	public void setShipment(String shipment) {
		this.shipment = shipment;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getAddDate() {
		return addDate;
	}

	public void setAddDate(String addDate) {
		this.addDate = addDate;
	}

	@Override
	public String toString() {
		return "CartVO [cartNo=" + cartNo + ", uno=" + uno + ", bno=" + bno + ", price=" + price + ", shipment="
				+ shipment + ", stock=" + stock + ", addDate=" + addDate + "]";
	}
	
	
	
}