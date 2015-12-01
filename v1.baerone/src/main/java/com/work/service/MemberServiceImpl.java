package com.work.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.MemberDAO;
import com.work.dao.MemberDAOImpl;
import com.work.dto.Member;

@Service
public class MemberServiceImpl implements MemberService {
	private MemberDAOImpl dao;
	@Autowired
	public void setService(MemberDAOImpl dao){
		this.dao = dao;
	}
	
	/**
	 * 로그인 서비스
	 */
	public String login(String userid , String userpw) {

		HashMap<String,String> hashmap = new HashMap<String, String>();
		hashmap.put("userid", userid);
		hashmap.put("userpw", userpw);
		return dao.login(hashmap);
	}
	
	public int join(Member member) {
		return dao.join(member);
	}
	
	public Member myinfo(String userid) {
		System.out.println("#####service"+userid);
		return dao.myinfo(userid);
	}
	
	public int myinfoModify(Member member) {
		return dao.myinfoModify(member);
	}
	
	public int deleteMember(String userid) {
		return dao.deleteMember(userid);
	}

}
