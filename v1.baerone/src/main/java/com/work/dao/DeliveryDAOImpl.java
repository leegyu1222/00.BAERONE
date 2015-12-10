package com.work.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.work.dto.Delivery;
import com.work.dto.Member;

@Repository
public class DeliveryDAOImpl implements DeliveryDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/* Constructor */
	public DeliveryDAOImpl(){}
	
	public List<Member> deliveryOrder(HashMap<String,String> hashMap) {
		return sqlSession.selectList("deliveryOrder", hashMap);
	}
	
	public boolean deliveryService(HashMap<String, String> hashMap) {
		if(sqlSession.insert("deliveryService", hashMap) == 1) {
			return true;
		} else {
			return false;
		}
	}
	public List<Delivery> deliveryList() {
		return sqlSession.selectList("deliveryList");
	}
	
	public int deliveryUpdate(int deliveryNo) {
		return sqlSession.update("deliveryUpdate", deliveryNo);
	}
	
	public List<Delivery> myDelivery(String senderId) {
		return sqlSession.selectList("myDelivery", senderId);
	}
	
	public List<Delivery> myDeliveryUpdate(int deliveryNo) {
		return sqlSession.selectList("myDeliveryUpdate", deliveryNo);
	}
	
	public int cancelDelivery(int deliveryNo){
		return sqlSession.delete("cancelDelivery", deliveryNo);
	}
	
	public List<Delivery> deliveryReady() {
		return sqlSession.selectList("deliveryReady");
	}
	
	public List<Delivery> sendDrone(Delivery dto) {
		return sqlSession.selectList("sendDrone", dto);
	}
	
	public List<Delivery> searchList(String searchBox, String category) {
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("searchBox", searchBox);
		hashmap.put("category", category);
		return sqlSession.selectList("searchList", hashmap);
	}
	public String searchUserId(String phone){
		return sqlSession.selectOne("searchUserId", phone);
	}
	/**
	 * 배송정보 확인 글의 개수를 구하는 메서드 
	 */
	public int getAllDeliveryCount() {
		return sqlSession.selectOne("getAllDeliveryCount");
	}
	
	public List<Delivery> getAllDelivery(HashMap<String, Object> hashMap){
		return sqlSession.selectList("getAllDelivery", hashMap);
	}
	
	public List<Delivery> myDeliveryDetail(String productDetail){
		return sqlSession.selectList("myDeliveryDetail", productDetail);
	}
	/* 드론 배송 신청 수정 페이지 이동요청 메서드 */
	public List<Delivery> deliveryUpdateInfo(int deliveryNo){
		return sqlSession.selectList("deliveryUpdateInfo", deliveryNo);
	}
	/* 실질적 드론 배송 신청 수정 */
	public int updateDelivery (Delivery dto){
		return sqlSession.update("updateDelivery", dto);
	}
}
