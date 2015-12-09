package com.work.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.work.dto.Delivery;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int memberCount(){
		return sqlSession.selectOne("memberCount");
	}
	
	public List<Delivery> deliveryList(){
		return sqlSession.selectList("deliveryList");
	}

}
