package com.work.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.work.dto.Delivery;
import com.work.dto.Member;
import com.work.dto.Paging;
import com.work.service.AdminServiceImpl;
import com.work.service.DeliveryServiceImpl;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

@Controller
public class AdminController {
	private AdminServiceImpl adminService;
	private DeliveryServiceImpl deliveryService;
	
	@Autowired
	public void setService(AdminServiceImpl adminService){
		this.adminService = adminService;
	}
	
	@Autowired
	public void setDeliveryService(DeliveryServiceImpl deliveryService) {
		this.deliveryService = deliveryService;
	}
	
	@RequestMapping(value = "adminMain.do")
	public ModelAndView goAdminMain() {
		ModelAndView mav = new ModelAndView();
		/* List<Lecture> list = adminService.lectureList();
		System.out.println(list);
		*/
		mav.setViewName("admin/adminMain");
		return mav;
	}
	
	@RequestMapping(value = "mgDelivery.do")
	public ModelAndView goMgDelivery() {
		ModelAndView mav = new ModelAndView();
		
		List<Delivery> list = adminService.deliveryList();
		System.out.println(list);
		mav.addObject("list", list);
		
		
		mav.setViewName("admin/mgDelivery");
		return mav;
	}
	
	@RequestMapping(value = "mgMember.do")
	public ModelAndView goMgLecture() {
		ModelAndView mav = new ModelAndView();
		 List<Member> list = adminService.memberList();
		
		mav.addObject("list", list);
		mav.setViewName("admin/mgMember");
		return mav;
	}
	
	
}
