package com.work.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.BoardDAOImpl;
import com.work.dto.Board;
import com.work.dto.Paging;
import com.work.dto.SearchPaging;
import com.work.util.Utility;

@Service
public class BoardServiceImpl implements BoardService{
	
	private BoardDAOImpl boardDAO;
	
	@Autowired
	public void setBoardDAO(BoardDAOImpl boardDAO) {
		this.boardDAO = boardDAO;
	}
	@Override
	public boolean insertBoard(String title, String content, String nickname) {
		HashMap<String, String> hashMap = new HashMap<String, String>();
		
		hashMap.put("title", title);
		hashMap.put("content", content);
		hashMap.put("nickname", nickname);
		hashMap.put("writeDate", Utility.getCurrentDate());
		return boardDAO.insertBoard(hashMap);
	}
	@Override
	public HashMap<String, Object> getAllBoard(int page) {
		Paging paging = new Paging(page);
		paging.setTotalRow(boardDAO.getAllBoardCount());
		paging.setTotalPage(paging.getTotalRow());
		
		HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
		hashMap.put("start", paging.getStart());
		hashMap.put("end", paging.getStart() + paging.getPageCount() - 1);

		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("list", boardDAO.getAllBoard(hashMap));
		resultMap.put("paging", paging);
		
		return resultMap;
	}
	@Override
	public Board getBoardOne(int postNo) {
		return boardDAO.getBoardOne(postNo);
	}
	@Override
	public int deleteBoard(int postNo) {
		return boardDAO.deleteBoard(postNo);
	}
	@Override
	public int updateBoard(int postNo, String title, String content) {
		HashMap<String, String> hashMap = new HashMap<String, String>();
		hashMap.put("postNo", Integer.toString(postNo));
		hashMap.put("title", title);
		hashMap.put("content", content);
		return boardDAO.updateBoard(hashMap);
	}
	@Override
	public HashMap<String, Object> getSearchBoardList(int page, String searchType, String keyword) {
		SearchPaging searchPaging = new SearchPaging(page, searchType, keyword);
		searchPaging.setTotalRow(boardDAO.getSearchBoardCount(searchPaging));
		System.out.println("검색된 게시글 행 수:" + searchPaging.getTotalRow());
		searchPaging.setTotalPage(searchPaging.getTotalRow());
		
		List<Board> searchBoardList =  boardDAO.getSearchBoardList(searchPaging);
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("searchBoardList", searchBoardList);
		resultMap.put("searchPaging", searchPaging);
		
		return resultMap;
	}
}
