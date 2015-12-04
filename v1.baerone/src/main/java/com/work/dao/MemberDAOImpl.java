package com.work.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.work.dto.Member;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * 로그인
	 */
	public String login(HashMap<String, String> hashmap) {
		return sqlSession.selectOne("login",hashmap);
	}
	
	/**
	 * 회원가입
	 */
	public int join(Member member) {
		return sqlSession.insert("join",member);
	}
	
	/**
	 * 내정보조회
	 */
	public Member myinfo(String userid) {
		System.out.println(userid);
		return sqlSession.selectOne("myinfo",userid);
	}
	/**
	 * 내정보수정
	 */
	public int myinfoModify(Member member) {
		return sqlSession.update("myinfoModify",member);
	}
	
	/**
	 * 회원탈퇴
	 */
	public int deleteMember(String userid) {
		return sqlSession.delete("deleteMember",userid);
	}
	
	/**
	 * 회원조회(관리자)
	 */
	public List<Member> memberList() {
		return sqlSession.selectList("memberList");
	}

	/**
	 * 회원검색(관리자)
	 */
	public List<Member> memberListChoose(HashMap<String, String> hashmap) {
		return sqlSession.selectList("memberSelectList", hashmap );
	}
	
}
