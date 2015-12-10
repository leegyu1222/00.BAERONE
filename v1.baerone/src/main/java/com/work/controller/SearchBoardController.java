package com.work.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.work.dto.Board;
import com.work.dto.Paging;
import com.work.dto.Reply;
import com.work.dto.SearchPaging;
import com.work.service.BoardServiceImpl;
import com.work.service.ReplyServiceImpl;
import com.work.util.Utility;



@Controller
public class SearchBoardController {
	   private BoardServiceImpl boardService;
	   private ReplyServiceImpl replyService;
	   
	   @Autowired
	   public void setBoardService(BoardServiceImpl boardService) {
		   this.boardService = boardService;
	   }
	   @Autowired
	   public void setReplyService(ReplyServiceImpl replyService) {
		   this.replyService = replyService;
	   }
	   @SuppressWarnings("unchecked")
	   @RequestMapping(value = "searchBoard.do", method = RequestMethod.GET)
	   public ModelAndView searchBoard(ModelAndView mv, int page, String searchType, String keyword) {
		   HashMap<String, Object> resultMap =  boardService.getSearchBoardList(page, searchType, keyword);
		   mv.addObject("today", Utility.getCurrentDate());
		   mv.addObject("page", page);
		   mv.addObject("searchType", searchType);
		   mv.addObject("keyword", keyword);
		   mv.addObject("searchBoardList", (List<Board>) resultMap.get("searchBoardList"));
		   mv.addObject("searchPaging", (SearchPaging) resultMap.get("searchPaging"));
		   mv.setViewName("board/contestSearchList");
		   return mv;
	   }
	   @SuppressWarnings("unchecked")
	   @RequestMapping(value = "contestSearchView.do")
	   public ModelAndView contestSearchView(ModelAndView mv, int postNo, int page, int replyPage, String searchType, String keyword) {
		   Board board = boardService.getBoardOne(postNo);
		   HashMap<String, Object> resultMap = replyService.getAllReply(postNo, replyPage);
		   
		   mv.addObject("page", page);
		   mv.addObject("replyPage", replyPage);
		   mv.addObject("board", board);
		   mv.addObject("searchType", searchType);
		   mv.addObject("keyword", keyword);
		   mv.addObject("replyList", (List<Reply>) resultMap.get("replyList"));
		   mv.addObject("replyPaging", (Paging) resultMap.get("replyPaging"));
		   mv.addObject("replyCount", resultMap.get("replyCount"));
		   
		   mv.setViewName("board/contestSearchView");
		   return mv;
	   }
}
