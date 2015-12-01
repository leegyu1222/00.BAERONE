package com.work.service;

import com.work.dto.Member;

public interface MemberService {
	public String login(String userid, String userpw);
	public int join(Member member);
	public Member myinfo(String userid);
	public int myinfoModify(Member member);
	public int deleteMember(String userid);
}
