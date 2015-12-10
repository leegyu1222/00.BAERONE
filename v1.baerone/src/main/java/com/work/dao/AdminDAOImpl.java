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

	public int thisIncome() {
		return sqlSession.selectOne("thisIncome");
	}
	
	public int thisOrder() {
		return sqlSession.selectOne("thisOrder");
	}
	
	public int maleCount() {
		return sqlSession.selectOne("maleCount");
	}
	
	public int femaleCount() {
		return sqlSession.selectOne("femaleCount");
	}
	
	public int years10() {
		return sqlSession.selectOne("years10");
	}
	
	public int years20() {
		return sqlSession.selectOne("years20");
	}

	public int years30() {
		return sqlSession.selectOne("years30");
	}
	
	public int years40() {
		return sqlSession.selectOne("years40");
	}
	
	public int years50() {
		return sqlSession.selectOne("years50");
	}
}
