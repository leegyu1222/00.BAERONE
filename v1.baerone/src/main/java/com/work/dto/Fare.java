package com.work.dto;

public class Fare {
	private int fareNo;
	private int distanceFrom;
	private int distnaceTo;
	private int fare;

	public int getFareNo() {
		return fareNo;
	}
	public void setFareNo(int fareNo) {
		this.fareNo = fareNo;
	}
	public int getDistanceFrom() {
		return distanceFrom;
	}
	public void setDistanceFrom(int distanceFrom) {
		this.distanceFrom = distanceFrom;
	}
	public int getDistnaceTo() {
		return distnaceTo;
	}
	public void setDistnaceTo(int distnaceTo) {
		this.distnaceTo = distnaceTo;
	}
	public int getFare() {
		return fare;
	}
	public void setFare(int fare) {
		this.fare = fare;
	}
	public Fare(int fareNo, int distanceFrom, int distnaceTo, int fare) {
		super();
		this.fareNo = fareNo;
		this.distanceFrom = distanceFrom;
		this.distnaceTo = distnaceTo;
		this.fare = fare;
	}
	public Fare() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "fareNo=" + fareNo + ", distanceFrom=" + distanceFrom + ", distnaceTo=" + distnaceTo + ", fare=" + fare;
	}
	
	

}
