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
	 * �α��� 
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
			mv.setViewName("admin/adminMain");
		} else {
			mv.setViewName("main");
		}
		return mv;
	}
	
	/**
	 * �α׾ƿ� - > �α���������
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
	 * ��������ȸ
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
			mv.addObject("message",userid + "�� ��ȸ ���� �Դϴ�.");
			mv.setViewName("member/myinfo");
		}
		return mv;
	}
	
	/**
	 * ���������� ��� �̵� => �������� ������
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
	 * ���������� ����
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
			mv.addObject("message", session.getAttribute("userid") + "�� ���� �Ǿ����ϴ�. �ٽ� ��ȸ ���ּ���.");
			member = service.myinfo((String)session.getAttribute("userid"));
			mv.addObject(member);
			mv.setViewName("member/myinfo");
		}
		return mv;
	}
	
	/**
	 * ȸ��Ż�� 
	 * @param request
	 * @return
	 */
	@RequestMapping(value="deleteMember.do", method=RequestMethod.POST)
	public ModelAndView deleteMember(HttpSession session,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		session = request.getSession(true);
		
		if(service.deleteMember((String)session.getAttribute("userid")) > 0) {
			mv.addObject("message","ȸ���� �����Ǿ����ϴ�.");
			mv.setViewName("login");
		}else {
			mv.addObject("message","Ż�� �����Ͽ����ϴ�.");
			mv.setViewName("deleteMember");
		}
		return mv;
		
	}

	/**
	 * �������Ʈ ���� 
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
	 * ���ǰ˻� 
	 * @param request
	 * @return
	 */
	@RequestMapping(value="memberListSelect.do", method=RequestMethod.POST)
	public ModelAndView MemberListChoose(String memberListSelect, String memberListInput , HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		if(memberListInput != null ) {
			System.out.println("if��");
			List<Member> list = service.memberListChoose(memberListSelect, memberListInput);
			mv.addObject("memberList", list);
			mv.setViewName("admin/memberList");
		}else {
			System.out.println("else��");
			service.memberListChoose(memberListSelect, memberListInput);
			mv.addObject("message","�Է����ּ���.");
			mv.setViewName("admin/memberList");
		}
		
		return mv;
	}
}
