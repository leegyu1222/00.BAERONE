package com.work.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.work.dto.Member;
import com.work.service.AdminServiceImpl;
import com.work.service.MemberServiceImpl;

import org.springframework.stereotype.Controller;

@Controller
public class MemberController {
	private MemberServiceImpl service;
	private AdminServiceImpl adminService;
	
	@Autowired
	public void setService(MemberServiceImpl service){
		this.service = service;
	}
	
	@Autowired
	public void setService(AdminServiceImpl adminService){
		this.adminService = adminService;
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
		
		HttpSession session = request.getSession(true);
		session.setAttribute("userid", userid);
		session.setAttribute("grade", grade);
		
		if(grade.equals("A")) {
			mv.addObject("memberCount",adminService.memberCount());
			System.out.println("######"+adminService.memberCount());
			mv.setViewName("admin/adminMain");
		} else {
			mv.setViewName("main");
		}
		return mv;
	}
	
	/**
	 * 占싸그아울옙 - > 占싸깍옙占쏙옙占쏙옙占쏙옙占쏙옙
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
	 * 占쏙옙占쏙옙占쏙옙占쏙옙회
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
			mv.addObject("message",userid + "占쏙옙 占쏙옙회 占쏙옙占쏙옙 占쌉니댐옙.");
			mv.setViewName("member/myinfo");
		}
		return mv;
	}
	
	/**
	 * 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占� 占싱듸옙 => 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙
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
	 * 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
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
			mv.addObject("message", session.getAttribute("userid") + "占쏙옙 占쏙옙占쏙옙 占실억옙占쏙옙占싹댐옙. 占쌕쏙옙 占쏙옙회 占쏙옙占쌍쇽옙占쏙옙.");
			member = service.myinfo((String)session.getAttribute("userid"));
			mv.addObject(member);
			mv.setViewName("member/myinfo");
		}
		return mv;
	}
	
	/**
	 * 회占쏙옙탈占쏙옙 
	 * @param request
	 * @return
	 */
	@RequestMapping(value="deleteMember.do", method=RequestMethod.POST)
	public ModelAndView deleteMember(HttpSession session,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		session = request.getSession(true);
		
		if(service.deleteMember((String)session.getAttribute("userid")) > 0) {
			mv.addObject("message","회占쏙옙占쏙옙 占쏙옙占쏙옙占실억옙占쏙옙占싹댐옙.");
			mv.setViewName("login");
		}else {
			mv.addObject("message","탈占쏙옙 占쏙옙占쏙옙占싹울옙占쏙옙占싹댐옙.");
			mv.setViewName("deleteMember");
		}
		return mv;
		
	}

	/**
	 * 占쏙옙占쏙옙占쏙옙占싣� 占쏙옙載ο옙占� 
	 * @param userid
	 * @param request
	 * @return
	 */
	@RequestMapping(value="memberListView.do")
	public ModelAndView MemberList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<Member> list = service.memberList();
		
		if(list != null) {
			mv.addObject("memberList",list);
			mv.setViewName("admin/memberList");
		}
		return mv;
	}
	
	/**
	 * 占쏙옙占실검삼옙 
	 * @param request
	 * @return
	 */
	@RequestMapping(value="memberListSelect.do", method=RequestMethod.POST)
	public ModelAndView MemberListChoose(String memberListSelect, String memberListInput , HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		if(memberListInput != null ) {
			System.out.println("if占쏙옙");
			List<Member> list = service.memberListChoose(memberListSelect, memberListInput);
			mv.addObject("memberList", list);
			mv.setViewName("admin/memberList");
		}else {
			System.out.println("else占쏙옙");
			service.memberListChoose(memberListSelect, memberListInput);
			mv.addObject("message","占쌉뤄옙占쏙옙占쌍쇽옙占쏙옙.");
			mv.setViewName("admin/memberList");
		}
		
		return mv;
	}
}
