package com.spring.web.vo;

public class OrderVO {
	private int orderNo;
	private int uno;
	private int bno;
	private int payment;
	private String shipment;
	private String addr;
	private String phone;
	private String orderRec;
	private String regDate;
	
	public OrderVO() {
	}

	public OrderVO(int orderNo, int uno, int bno, int payment, String shipment, String addr, String phone,
			String orderRec, String regDate) {
		super();
		this.orderNo = orderNo;
		this.uno = uno;
		this.bno = bno;
		this.payment = payment;
		this.shipment = shipment;
		this.addr = addr;
		this.phone = phone;
		this.orderRec = orderRec;
		this.regDate = regDate;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
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

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public String getShipment() {
		return shipment;
	}

	public void setShipment(String shipment) {
		this.shipment = shipment;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getOrderRec() {
		return orderRec;
	}

	public void setOrderRec(String orderRec) {
		this.orderRec = orderRec;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "OrderVO [orderNo=" + orderNo + ", uno=" + uno + ", bno=" + bno + ", payment=" + payment + ", shipment="
				+ shipment + ", addr=" + addr + ", phone=" + phone + ", orderRec=" + orderRec + ", regDate=" + regDate
				+ "]";
	}

	
}