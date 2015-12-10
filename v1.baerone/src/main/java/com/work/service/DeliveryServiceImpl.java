package com.work.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.DeliveryDAO;
import com.work.dao.DeliveryDAOImpl;
import com.work.dto.Delivery;
import com.work.dto.Member;
import com.work.dto.Paging;

@Service
public class DeliveryServiceImpl implements DeliveryService {
	private DeliveryDAOImpl deliveryDAO;
	public void setService(DeliveryDAOImpl dao){
		this.deliveryDAO = dao;
	}
	
	@Autowired
	public void setDeliveryDAO(DeliveryDAOImpl deliveryDAO) {
		this.deliveryDAO = deliveryDAO;
	}
	
	public List<Member> deliveryOrder(String userid) {
		HashMap<String, String> hashMap = new HashMap<String, String>();
		hashMap.put("userid", userid);
		return deliveryDAO.deliveryOrder(hashMap);
	}
	
	public boolean deliveryService(Delivery dto) {
		HashMap<String, String> hashMap = new HashMap<String, String>();
		hashMap.put("deliveryDate", dto.getDeliveryDate());
		hashMap.put("senderId", dto.getSenderId());
		hashMap.put("senderName", dto.getSenderName());
		hashMap.put("senderPhone", dto.getSenderPhone());
		hashMap.put("senderPostNo", dto.getSenderPostNo());
		hashMap.put("senderAddrOld", dto.getSenderAddrOld());
		hashMap.put("senderAddrNew", dto.getSenderAddrNew());
		hashMap.put("senderAddrMisc", dto.getSenderAddrMisc());
		hashMap.put("receiverId", dto.getReceiverId());
		hashMap.put("receiverName", dto.getReceiverName());
		hashMap.put("receiverPhone", dto.getReceiverPhone());
		hashMap.put("receiverPostNo", dto.getReceiverPostNo());
		hashMap.put("receiverAddrOld", dto.getReceiverAddrOld());
		hashMap.put("receiverAddrNew", dto.getReceiverAddrNew());
		hashMap.put("receiverAddrMisc", dto.getReceiverAddrMisc());
		hashMap.put("productDetail", dto.getProductDetail());
		hashMap.put("fare", dto.getFare());
		hashMap.put("deliveryStatus", dto.getDeliveryStatus());
		hashMap.put("beaconName", dto.getBeaconName());
		return deliveryDAO.deliveryService(hashMap);
	}
	
	public List<Delivery> deliveryList() {
		return deliveryDAO.deliveryList();
	}
	
	public int deliveryUpdate(int deliveryNo) {
		return deliveryDAO.deliveryUpdate(deliveryNo);
	}
	
	public List<Delivery> myDelivery(String senderId) {
		return deliveryDAO.myDelivery(senderId);
	}
	
	public List<Delivery> myDeliveryUpdate(int deliveryNo) {
		return deliveryDAO.myDeliveryUpdate(deliveryNo);
	}
	
	public int cancelDelivery(int deliveryNo){
		return deliveryDAO.cancelDelivery(deliveryNo);
	}

	@Override
	public List<Delivery> deliveryReady() {
		return deliveryDAO.deliveryReady();
	}

	@Override
	public List<Delivery> sendDrone(Delivery dto) {
		return deliveryDAO.sendDrone(dto);
	}

	@Override
	public List<Delivery> searchList(String searchBox, String category) {
		return deliveryDAO.searchList(searchBox, category);
	}
	public String searchUserId(String phone){
		return deliveryDAO.searchUserId(phone);
	}
	public HashMap<String, Object> getAllBoard(int page, String userid){
		Paging paging = new Paging(page);
		paging.setTotalRow(deliveryDAO.getAllDeliveryCount());
		paging.setTotalPage(paging.getTotalRow());
		
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		hashMap.put("start", paging.getStart());
		hashMap.put("end", paging.getStart() + paging.getPageCount() - 1);
		hashMap.put("senderId", userid);
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("list", deliveryDAO.getAllDelivery(hashMap));
		resultMap.put("paging", paging);
		
		return resultMap;
	}
	
	public List<Delivery> myDeliveryDetail(String productDetail) {
		return deliveryDAO.myDeliveryDetail(productDetail);
	}
	/* 드론 배송 신청 수정 페이지 이동요청 메서드 */
	public List<Delivery> deliveryUpdateInfo(int deliveryNo){
		return deliveryDAO.deliveryUpdateInfo(deliveryNo);
	}
	public int updateDelivery (Delivery dto){
		return deliveryDAO.updateDelivery(dto);
	}
}
