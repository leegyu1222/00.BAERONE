package com.work.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.work.dto.Board;
import com.work.dto.Paging;
import com.work.dto.Reply;
import com.work.service.BoardServiceImpl;
import com.work.service.ReplyServiceImpl;
import com.work.util.Utility;

@Controller
public class BoardController {
	
	private BoardServiceImpl boardService;
	private ReplyServiceImpl replyService;
	
	@Autowired
	public void setBoardServic(BoardServiceImpl boardService) {
		this.boardService = boardService;
	}
	   @Autowired
	   public void setReplyService(ReplyServiceImpl replyService) {
		   this.replyService = replyService;
	   }
		@SuppressWarnings("unchecked")
		@RequestMapping(value = "contestList.do", method = RequestMethod.GET)
		public ModelAndView contestList(int page) {
			ModelAndView mv = new ModelAndView();
			HashMap<String, Object> resultMap = boardService.getAllBoard(page);
			mv.addObject("list", (List<Board>) resultMap.get("list"));
			mv.addObject("paging", (Paging) resultMap.get("paging"));
			mv.addObject("page", page);
			mv.addObject("today", Utility.getCurrentDate());
			mv.setViewName("board/contestList");
			return mv;
		}
		@RequestMapping(value = "contestWrite.do")
		public ModelAndView contestWrite(int page) {
			ModelAndView mv = new ModelAndView();
			mv.addObject("page", page);
			mv.setViewName("board/contestWrite");
			return mv;
		}
		@SuppressWarnings("unchecked")
		@RequestMapping(value = "contestSave.do", method = RequestMethod.POST)
		public ModelAndView contestSave(int page, String content, HttpServletRequest request) {
			ModelAndView mv = new ModelAndView();
			HttpSession session = request.getSession(false);
			String title = request.getParameter("title");
			if(session != null && session.getAttribute("nickname") != null) {
				if(boardService.insertBoard(title, content, session.getAttribute("nickname").toString())) {
					HashMap<String, Object> resultMap = boardService.getAllBoard(page);
					mv.addObject("list", (List<Board>) resultMap.get("list"));
					mv.addObject("paging", (Paging) resultMap.get("paging"));
					mv.addObject("page", page);
					mv.addObject("today", Utility.getCurrentDate());
					mv.setViewName("board/contestList");
				} else {
					mv.setViewName("error");
				}
			}
			return mv;
		}
		@RequestMapping(value = "contestModify.do", method = RequestMethod.POST)
		public ModelAndView contestModify(int postNo, int page, String title, String content) {
			ModelAndView mv = new ModelAndView();
			mv.addObject("page", page);
			mv.addObject("postNo", postNo);
			mv.addObject("title", title);
			mv.addObject("content", content);
			mv.addObject("today", Utility.getCurrentDate());
			mv.setViewName("board/contestUpdate");
			return mv;
		}
		@SuppressWarnings("unchecked")
		@RequestMapping(value = "contestUpdate.do", method = RequestMethod.POST)
		public ModelAndView contestUpdate(int postNo, int page, String title, String content) {
			ModelAndView mv = new ModelAndView();
			if(boardService.updateBoard(postNo, title, content) == 1) {
				mv.addObject("message", "updateOk");
				HashMap<String, Object> resultMap = boardService.getAllBoard(page);
				mv.addObject("list", (List<Board>) resultMap.get("list"));
				mv.addObject("paging", (Paging) resultMap.get("paging"));
				mv.addObject("page", page);
				mv.addObject("today", Utility.getCurrentDate());
				mv.setViewName("board/contestList");
			}
			return mv;
		}
		@SuppressWarnings("unchecked")
		@RequestMapping(value = "contestDelete.do", method = RequestMethod.POST)
		public ModelAndView contestDelete(int postNo, int page) {
			ModelAndView mv = new ModelAndView();
			if(boardService.deleteBoard(postNo) == 1) {
				mv.addObject("message", "deleteOk");
				HashMap<String, Object> resultMap = boardService.getAllBoard(page);
				mv.addObject("list", (List<Board>) resultMap.get("list"));
				mv.addObject("paging", (Paging) resultMap.get("paging"));
				mv.addObject("page", page);
				mv.setViewName("board/contestList");
			} 
			return mv;
		}
		@SuppressWarnings("unchecked")
		@RequestMapping(value = "contestView.do")
		public ModelAndView contestView(int postNo, int page, int replyPage) {
			
			ModelAndView mv = new ModelAndView();
			Board board = boardService.getBoardOne(postNo);
			HashMap<String, Object> resultMap = replyService.getAllReply(postNo, replyPage);
			
			mv.addObject("page", page);
			mv.addObject("replyPage", replyPage);
			mv.addObject("board", board);
			mv.addObject("replyList", (List<Reply>) resultMap.get("replyList"));
			mv.addObject("replyPaging", (Paging) resultMap.get("replyPaging"));
			mv.addObject("replyCount", resultMap.get("replyCount"));
			mv.setViewName("board/contestView");
			
			return mv;
		}
}
