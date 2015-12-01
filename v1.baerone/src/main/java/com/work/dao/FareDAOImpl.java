package com.work.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FareDAOImpl implements FareDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public String fareCalc(double distance){
		System.out.println("##fareDao" + distance);
		String result = sqlSession.selectOne("fareCalc", distance);
		System.out.println("###result"+ result);
		return sqlSession.selectOne("fareCalc", distance);
	}

}
