package com.work.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.ReplyDAO;
import com.work.dao.ReplyDAOImpl;
import com.work.dto.Paging;
import com.work.util.Utility;

@Service
public class ReplyServiceImpl implements ReplyService{
	
	private ReplyDAO replyDAO;
	
	@Autowired
	public void setReplyDAO(ReplyDAOImpl replyDAO) {
		this.replyDAO = replyDAO;
	}
	
	@Override
	public boolean addReply(int postNo, String nickname, String content) {
		HashMap<String, String> hashMap = new HashMap<String, String>();
		hashMap.put("postNo", Integer.toString(postNo));
		hashMap.put("content", content);
		hashMap.put("nickname", nickname);
		hashMap.put("writeDate", Utility.getCurrentDate());
		return replyDAO.addReply(hashMap);
	}

	@Override
	public HashMap<String, Object> getAllReply(int postNo, int replyPage) {
		Paging replyPaging = new Paging(replyPage);
		replyPaging.setTotalRow(replyDAO.getAllReplyCount(postNo));
		System.out.println("총 댓글 수" + replyPaging.getTotalRow());
		replyPaging.setTotalPage(replyPaging.getTotalRow());
		
		HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
		hashMap.put("postNo", postNo);
		hashMap.put("start", replyPaging.getStart());
		hashMap.put("end", replyPaging.getStart() + replyPaging.getPageCount() - 1);
		
		System.out.println(hashMap);
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("replyList", replyDAO.getAllReply(hashMap));
		resultMap.put("replyPaging", replyPaging);
		resultMap.put("replyCount", replyDAO.getAllReplyCount(postNo));
		
		return resultMap;
	}
}
