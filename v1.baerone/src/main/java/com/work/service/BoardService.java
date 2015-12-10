package com.work.service;

import java.util.HashMap;

import com.work.dto.Board;

public interface BoardService {
	public HashMap<String, Object> getAllBoard(int page);
	
	public boolean insertBoard(String title, String content, String nickname);
	
	public Board getBoardOne(int postNo);
	
	public int deleteBoard(int postNo);
	
	public int updateBoard(int postNo, String title, String content);
	
	public HashMap<String, Object> getSearchBoardList(int page, String searchType, String keyword);
}