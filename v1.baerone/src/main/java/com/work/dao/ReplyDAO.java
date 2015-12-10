package com.work.dao;

import java.util.HashMap;
import java.util.List;

import com.work.dto.Reply;

public interface ReplyDAO {

	public boolean addReply(HashMap<String, String> hashMap);
	
	public List<Reply> getAllReply(HashMap<String, Integer> hashMap);
	
	public int getAllReplyCount(int postNo);
}
