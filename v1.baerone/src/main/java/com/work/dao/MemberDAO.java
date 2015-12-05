package com.work.dao;

import java.util.HashMap;
import java.util.List;

import com.work.dto.Delivery;
import com.work.dto.Member;

public interface MemberDAO {
	public String login(HashMap<String,String> hashmap);
	public int join(Member member);
	public Member myinfo(String userid);
	public int myinfoModify(Member member);
	public int deleteMember(String userid);
	public List<Member> memberList();
	public List<Member> memberListChoose(HashMap<String,String> hashmap);
}
