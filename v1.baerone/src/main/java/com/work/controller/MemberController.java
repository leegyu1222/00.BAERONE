package com.work.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.work.dto.Member;
import com.work.service.MemberServiceImpl;

import org.springframework.stereotype.Controller;

@Controller
public class MemberController {
	private MemberServiceImpl service;
	
	@Autowired
	public void setService(MemberServiceImpl service){
		this.service = service;
	}
	
	/**
	 * 로그인 
	 * @param userid
	 * @param userpw
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "login.do", method=RequestMethod.POST)
	public ModelAndView login(String userid, String userpw, HttpServletRequest request) {
		String grade = service.login(userid, userpw);
		ModelAndView mv = new ModelAndView();
		
		if(grade != null) {
			HttpSession session = request.getSession(true);
			session.setAttribute("userid", userid);
			session.setAttribute("grade", grade);
			mv.setViewName("main");
		}else {
			mv.addObject("message","로그인 정보를 다시 확인하시기 바랍니다.");
		}
		return mv;
	}
	
	/**
	 * 로그아웃 - > 로그인페이지
	 * @param session
	 * @return
	 */
	@RequestMapping(value="logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		String userid = (String)session.getAttribute("userid");
		
		if(session != null) {
			if(session.getAttribute("userid") != null) {
				session.removeAttribute("userid");
			}
			if(session.getAttribute("gender") != null) {
				session.removeAttribute("gender");
			}
		}
		return "index";
	}
	
	/**
	 * 내정보조회
	 * @param member
	 * @param request
	 * @return
	 */
	@RequestMapping(value="myinfo.do")
	public ModelAndView myinfo(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession(false);
		String userid = (String)session.getAttribute("userid");
		
		if(userid != null) {
			Member member = service.myinfo(userid);
			mv.addObject("member",member);
			mv.addObject("message",userid + "님 조회 내역 입니다.");
			mv.setViewName("member/myinfo");
		}
		return mv;
	}
	
	/**
	 * 내정보변경 뷰로 이동 => 기존정보 보여줌
	 * @return
	 */
	@RequestMapping(value="myinfoModifyView.do")
	public ModelAndView myinfoModifyView(Member member, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		member = service.myinfo((String)session.getAttribute("userid"));
		mv.addObject(member);
		mv.setViewName("member/myinfoModify");
		return mv;
	}
	
	/**
	 * 내정보변경 저장
	 * @param member
	 * @param request
	 * @return
	 */
	@RequestMapping(value="myinfoModify.do", method=RequestMethod.POST)
	public ModelAndView myinfoModify(Member member, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession(false);
		
		if(session.getAttribute("userid") != null) {
			int check = service.myinfoModify(member);
			mv.addObject("message", session.getAttribute("userid") + "님 변경 되었습니다. 다시 조회 해주세요.");
			member = service.myinfo((String)session.getAttribute("userid"));
			mv.addObject(member);
			mv.setViewName("member/myinfo");
		}
		return mv;
	}
	
	/**
	 * 회원탈퇴 
	 * @param request
	 * @return
	 */
	@RequestMapping(value="deleteMember.do", method=RequestMethod.POST)
	public ModelAndView deleteMember(HttpSession session,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		session = request.getSession(true);
		
		if(service.deleteMember((String)session.getAttribute("userid")) > 0) {
			mv.addObject("message","회원이 삭제되었습니다.");
			mv.setViewName("login");
		}else {
			mv.addObject("message","탈퇴에 실패하였습니다.");
			mv.setViewName("deleteMember");
		}
		return mv;
		
	}

}
