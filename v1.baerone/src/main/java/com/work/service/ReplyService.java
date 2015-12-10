package com.work.service;

import java.util.HashMap;

public interface ReplyService {
	
	public boolean addReply(int postNo, String nickname, String content);
	
	public HashMap<String, Object> getAllReply(int postNo, int replyPage);
}
