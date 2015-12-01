package com.work.dto;

public class Delivery {
	private int deliveryNo;
	private String deliveryDate;
	private String senderId;
	private String senderName;
	private String senderPhone;
	private String senderPostNo;
	private String senderAddrOld;
	private String senderAddrNew;
	private String senderAddrMisc;
	private String receiverId;
	private String receiverName;
	private String receiverPhone;
	private String receiverPostNo;
	private String receiverAddrOld;
	private String receiverAddrNew;	
	private String receiverAddrMisc;
	private String productDetail;
	private String fare;
	private String deliveryStatus;	
	
	public int getDeliveryNo() {
		return deliveryNo;
	}

	public void setDeliveryNo(int deliveryNo) {
		this.deliveryNo = deliveryNo;
	}

	public String getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	public String getSenderId() {
		return senderId;
	}

	public void setSenderId(String senderId) {
		this.senderId = senderId;
	}

	public String getSenderName() {
		return senderName;
	}

	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}

	public String getSenderPhone() {
		return senderPhone;
	}

	public void setSenderPhone(String senderPhone) {
		this.senderPhone = senderPhone;
	}

	public String getSenderPostNo() {
		return senderPostNo;
	}

	public void setSenderPostNo(String senderPostNo) {
		this.senderPostNo = senderPostNo;
	}

	public String getSenderAddrOld() {
		return senderAddrOld;
	}

	public void setSenderAddrOld(String senderAddrOld) {
		this.senderAddrOld = senderAddrOld;
	}

	public String getSenderAddrNew() {
		return senderAddrNew;
	}

	public void setSenderAddrNew(String senderAddrNew) {
		this.senderAddrNew = senderAddrNew;
	}

	public String getSenderAddrMisc() {
		return senderAddrMisc;
	}

	public void setSenderAddrMisc(String senderAddrMisc) {
		this.senderAddrMisc = senderAddrMisc;
	}

	public String getReceiverId() {
		return receiverId;
	}

	public void setReceiverId(String receiverId) {
		this.receiverId = receiverId;
	}

	public String getReceiverName() {
		return receiverName;
	}

	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}

	public String getReceiverPhone() {
		return receiverPhone;
	}

	public void setReceiverPhone(String receiverPhone) {
		this.receiverPhone = receiverPhone;
	}

	public String getReceiverPostNo() {
		return receiverPostNo;
	}

	public void setReceiverPostNo(String receiverPostNo) {
		this.receiverPostNo = receiverPostNo;
	}

	public String getReceiverAddrOld() {
		return receiverAddrOld;
	}

	public void setReceiverAddrOld(String receiverAddrOld) {
		this.receiverAddrOld = receiverAddrOld;
	}

	public String getReceiverAddrNew() {
		return receiverAddrNew;
	}

	public void setReceiverAddrNew(String receiverAddrNew) {
		this.receiverAddrNew = receiverAddrNew;
	}

	public String getReceiverAddrMisc() {
		return receiverAddrMisc;
	}

	public void setReceiverAddrMisc(String receiverAddrMisc) {
		this.receiverAddrMisc = receiverAddrMisc;
	}

	public String getProductDetail() {
		return productDetail;
	}

	public void setProductDetail(String productDetail) {
		this.productDetail = productDetail;
	}

	public String getFare() {
		return fare;
	}

	public void setFare(String fare) {
		this.fare = fare;
	}

	public String getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	public Delivery() {}

	public Delivery(int deliveryNo, String deliveryDate, String senderId, String senderName, String senderPhone,
			String senderPostNo, String senderAddrOld, String senderAddrNew, String senderAddrMisc, String receiverId,
			String receiverName, String receiverPhone, String receiverPostNo, String receiverAddrOld,
			String receiverAddrNew, String receiverAddrMisc, String productDetail, String fare, String deliveryStatus) {
		super();
		this.deliveryNo = deliveryNo;
		this.deliveryDate = deliveryDate;
		this.senderId = senderId;
		this.senderName = senderName;
		this.senderPhone = senderPhone;
		this.senderPostNo = senderPostNo;
		this.senderAddrOld = senderAddrOld;
		this.senderAddrNew = senderAddrNew;
		this.senderAddrMisc = senderAddrMisc;
		this.receiverId = receiverId;
		this.receiverName = receiverName;
		this.receiverPhone = receiverPhone;
		this.receiverPostNo = receiverPostNo;
		this.receiverAddrOld = receiverAddrOld;
		this.receiverAddrNew = receiverAddrNew;
		this.receiverAddrMisc = receiverAddrMisc;
		this.productDetail = productDetail;
		this.fare = fare;
		this.deliveryStatus = deliveryStatus;
	}

	@Override
	public String toString() {
		return "deliveryNo=" + deliveryNo + ", deliveryDate=" + deliveryDate + ", senderId=" + senderId
				+ ", senderName=" + senderName + ", senderPhone=" + senderPhone + ", senderPostNo=" + senderPostNo
				+ ", senderAddrOld=" + senderAddrOld + ", senderAddrNew=" + senderAddrNew + ", senderAddrMisc="
				+ senderAddrMisc + ", receiverId=" + receiverId + ", receiverName=" + receiverName + ", receiverPhone="
				+ receiverPhone + ", receiverPostNo=" + receiverPostNo + ", receiverAddrOld=" + receiverAddrOld
				+ ", receiverAddrNew=" + receiverAddrNew + ", receiverAddrMisc=" + receiverAddrMisc + ", productDetail="
				+ productDetail + ", fare=" + fare + ", deliveryStatus=" + deliveryStatus;
	}
	
	

}
