package com.work.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.work.dto.Reply;


@Repository
public class ReplyDAOImpl implements ReplyDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public boolean addReply(HashMap<String, String> hashMap) {
		if(sqlSession.insert("addReply", hashMap) > 0) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public List<Reply> getAllReply(HashMap<String, Integer> hashMap) {
		return sqlSession.selectList("getAllReply", hashMap);
	}
	@Override
	public int getAllReplyCount(int postNo) {
		return sqlSession.selectOne("getAllReplyCount", postNo);
	}

}
