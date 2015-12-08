package com.work.service;

import java.util.List;

import com.work.dto.Delivery;
import com.work.dto.Member;

public interface DeliveryService {
	public List<Member> deliveryOrder(String userid);
	
	public boolean deliveryService(Delivery dto);
	
	public List<Delivery> deliveryList();
	
	public int deliveryUpdate(int deliveryNo);
	
	public List<Delivery> myDelivery(String senderId);
	
	public List<Delivery> myDeliveryUpdate(int deliveryNo);
	
	public int cancelDelivery(int deliveryNo);
	
	public List<Delivery> deliveryReady();
	
	public List<Delivery> sendDrone(Delivery dto);
	
	public List<Delivery> searchList(String searchBox, String category);
	
	public String searchUserId(String phone);
	
	public List<Delivery> myDeliveryDetail(String productDetail);
}
