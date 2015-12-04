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
	 * 로그인 서비스
	 */
	public String login(String userid , String userpw) {

		HashMap<String,String> hashmap = new HashMap<String, String>();
		hashmap.put("userid", userid);
		hashmap.put("userpw", userpw);
		return dao.login(hashmap);
	}
	/**
	 * 회원가입
	 */
	public int join(Member member) {
		return dao.join(member);
	}
	/**
	 * 내정보조회
	 */
	public Member myinfo(String userid) {
		System.out.println("#####service"+userid);
		return dao.myinfo(userid);
	}
	/**
	 * 내정보수정
	 */
	public int myinfoModify(Member member) {
		return dao.myinfoModify(member);
	}
	/**
	 * 회원탈퇴
	 */
	public int deleteMember(String userid) {
		return dao.deleteMember(userid);
	}
	/**
	 * 회원조회(관리자)
	 */
	public List<Member> memberList() {
		return dao.memberList();
	}

	/**
	 * 회원검색(관리자)
	 */
	public List<Member> memberListChoose(String memberListSelect, String memeberListInput) {
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("memberListSelect", memberListSelect);
		hashmap.put("memberListInput", memeberListInput);
		return dao.memberListChoose(hashmap);
	}
	
}
