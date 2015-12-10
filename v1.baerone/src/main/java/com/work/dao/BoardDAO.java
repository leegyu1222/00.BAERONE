package com.work.dao;

import java.util.HashMap;
import java.util.List;

import com.work.dto.Board;
import com.work.dto.SearchPaging;

public interface BoardDAO {
	public List<Board> getAllBoard(HashMap<String, Integer> hashMap);
	
	public boolean insertBoard(HashMap<String, String>hashMap);
	
	public Board getBoardOne(int postNo);
	
	public int deleteBoard(int postNo);
	
	public int updateBoard(HashMap<String, String> hashMap);
	
	public int getAllBoardCount();
	
	public int getAllReplyCount(int postNo);
	
	public List<Board> getSearchBoardList(SearchPaging searchPaging);
	
	public int getSearchBoardCount(SearchPaging searchPaging);
}
