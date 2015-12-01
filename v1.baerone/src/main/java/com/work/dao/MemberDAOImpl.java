package com.work.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.work.dto.Member;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public String login(HashMap<String, String> hashmap) {
		return sqlSession.selectOne("login",hashmap);
	}
	
	public int join(Member member) {
		return sqlSession.insert("join",member);
	}
	
	public Member myinfo(String userid) {
		System.out.println(userid);
		return sqlSession.selectOne("myinfo",userid);
	}
	
	public int myinfoModify(Member member) {
		return sqlSession.update("myinfoModify",member);
	}
	
	public int deleteMember(String userid) {
		return sqlSession.delete("deleteMember",userid);
	}

}
