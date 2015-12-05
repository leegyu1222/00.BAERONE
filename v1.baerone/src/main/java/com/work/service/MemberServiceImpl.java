package com.work.service;

import java.util.HashMap;
import java.util.List;

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
	 * �α��� ����
	 */
	public String login(String userid , String userpw) {

		HashMap<String,String> hashmap = new HashMap<String, String>();
		hashmap.put("userid", userid);
		hashmap.put("userpw", userpw);
		return dao.login(hashmap);
	}
	/**
	 * ȸ������
	 */
	public int join(Member member) {
		return dao.join(member);
	}
	/**
	 * ��������ȸ
	 */
	public Member myinfo(String userid) {
		System.out.println("#####service"+userid);
		return dao.myinfo(userid);
	}
	/**
	 * ����������
	 */
	public int myinfoModify(Member member) {
		return dao.myinfoModify(member);
	}
	/**
	 * ȸ��Ż��
	 */
	public int deleteMember(String userid) {
		return dao.deleteMember(userid);
	}
	/**
	 * ȸ����ȸ(������)
	 */
	public List<Member> memberList() {
		return dao.memberList();
	}

	/**
	 * ȸ���˻�(������)
	 */
	public List<Member> memberListChoose(String memberListSelect, String memeberListInput) {
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("memberListSelect", memberListSelect);
		hashmap.put("memberListInput", memeberListInput);
		return dao.memberListChoose(hashmap);
	}
	
}
