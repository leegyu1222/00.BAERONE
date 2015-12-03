package com.work.dao;

import java.util.HashMap;
import java.util.List;

import com.work.dto.Delivery;
import com.work.dto.Member;

public interface DeliveryDAO {
	public List<Member> deliveryOrder(HashMap<String,String> hashMap);
	
	public boolean deliveryService(HashMap<String, String> hashMap);
	
	public List<Delivery> deliveryList();
	
	public int deliveryUpdate(int deliveryNo);
	
	public List<Delivery> myDelivery(String senderId);
	
	public List<Delivery> myDeliveryUpdate(int deliveryNo);
	
	public List<Delivery> deliveryReady();
	
	public List<Delivery> sendDrone(Delivery dto);

}
