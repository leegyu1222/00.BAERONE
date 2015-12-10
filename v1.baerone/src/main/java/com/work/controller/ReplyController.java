package com.work.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.work.dto.Reply;
import com.work.service.ReplyServiceImpl;

@Controller
public class ReplyController {
	private ReplyServiceImpl replyService;
	
	@Autowired
	public void setReplyService(ReplyServiceImpl replyService) {
		this.replyService = replyService;
	}
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value = "addReply.do", method = RequestMethod.POST)
	public List<Reply> addReply(int postNo, int replyPage, String content, HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession(false);
		if(session != null && session.getAttribute("nickname") != null) {
			if(replyService.addReply(postNo, session.getAttribute("nickname").toString(), content)) {
				HashMap<String, Object> resultMap = replyService.getAllReply(postNo, 1);
				return (List<Reply>) resultMap.get("replyList");
			}
		}
		return null;
	}
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value = "getReplyMore.do")
	public List<Reply> getReplyMore(int replyPage, int postNo) {
		HashMap<String, Object> resultMap = replyService.getAllReply(postNo, replyPage);
		return (List<Reply>) resultMap.get("replyList");
	}
}
