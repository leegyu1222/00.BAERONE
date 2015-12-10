package com.work.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.work.dto.Board;
import com.work.dto.SearchPaging;

@Repository
public class BoardDAOImpl implements BoardDAO{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/* Constructor */
	public BoardDAOImpl() {}
	@Override
	public List<Board> getAllBoard(HashMap<String, Integer> hashMap) {
		return sqlSession.selectList("getAllBoard", hashMap);
	}
	public boolean insertBoard(HashMap<String, String>hashMap) {
		if(sqlSession.insert("insertBoard", hashMap) == 1) {
			return true;
		} else {
			return false;
		}
	}
	@Override
	public Board getBoardOne(int postNo) {
		sqlSession.update("updateHit", postNo);
		return sqlSession.selectOne("getBoardOne", postNo);
	}
	@Override
	public int deleteBoard(int postNo) {
		return sqlSession.delete("deleteBoard", postNo);
	}
	@Override
	public int updateBoard(HashMap<String, String> hashMap) {
		return sqlSession.update("updateBoard", hashMap);
	}
	@Override
	public int getAllBoardCount() {
		return sqlSession.selectOne("getAllBoardCount");
	}
	@Override
	public int getAllReplyCount(int postNo) {
		return sqlSession.selectOne("getAllReplyCount", postNo);
	}
	@Override
	public List<Board> getSearchBoardList(SearchPaging searchPaging) {
		return sqlSession.selectList("getSearchBoardList", searchPaging);
	}
	@Override
	public int getSearchBoardCount(SearchPaging searchPaging) {
		return sqlSession.selectOne("getSearchBoardCount", searchPaging);
	}
}
