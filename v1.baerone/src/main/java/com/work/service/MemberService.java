package com.work.service;

import java.util.List;

import com.work.dto.Member;

public interface MemberService {
	public String login(String userid, String userpw);
	public int join(Member member);
	public Member myinfo(String userid);
	public int myinfoModify(Member member);
	public int deleteMember(String userid);
	public List<Member> memberList( );
	public List<Member> memberListChoose(String memberListSelect, String memeberListInput);
}
