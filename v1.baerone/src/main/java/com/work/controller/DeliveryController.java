package com.work.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.work.dto.Delivery;
import com.work.dto.Member;
import com.work.service.DeliveryServiceImpl;
import com.work.service.FareServiceImpl;
import com.work.service.MemberServiceImpl;
import com.work.util.Utility;

@Controller
public class DeliveryController {
	private DeliveryServiceImpl deliveryService;
	private MemberServiceImpl memberService;
	private FareServiceImpl fareService;
	
	@Autowired
	public void setDeliveryService(DeliveryServiceImpl deliveryService) {
		this.deliveryService = deliveryService;
	}
	
	@Autowired
	public void setMemberServiceImpl(MemberServiceImpl memberService){
		this.memberService = memberService;
	}
	
	@Autowired
	public void setFareServiceImpl(FareServiceImpl fareService){
		this.fareService = fareService;
	}
	
	/**
	 * 배달신청 뷰 이동
	 * @param session
	 * @return
	 */
	@RequestMapping(value="deliveryView.do")
	public ModelAndView deliveryView(HttpSession session){
		String userid = (String)session.getAttribute("userid");
		ModelAndView mv = new ModelAndView();
		Member member = memberService.myinfo(userid);
		mv.addObject("member", member);
		mv.setViewName("delivery/delivery");
		
		return mv;
	}
	/**
	 * 배달 주문서 신청 내용 확인
	 * @param dto
	 * @return
	 */
	@RequestMapping(value="deliveryCheck.do", method=RequestMethod.POST)
	public ModelAndView deliveryCheck(Delivery dto){
		ModelAndView mv = new ModelAndView();
		try {
			double distance = Utility.getDistnace(dto.getSenderAddrOld(), dto.getReceiverAddrOld());
			mv.addObject("distance", distance);
			dto.setFare(fareService.fareCalc(distance));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		mv.addObject("delivery", dto);
		mv.setViewName("delivery/deliveryCheck");
		return mv;
	}
	
	/**
	 * 결제 팝업
	 * @param dto 
	 * @return
	 */
	@RequestMapping(value="payment.do", method=RequestMethod.POST)
	public ModelAndView payment(Delivery dto, HttpSession session){
		String senderId = (String)session.getAttribute("userid");
		ModelAndView mv = new ModelAndView();
		dto.setSenderId(senderId);
		mv.addObject("dto", dto);
		System.out.println(dto.toString());
		mv.setViewName("delivery/payment");
		
		if ( dto != null ) {
		deliveryService.deliveryService(dto);
	}
		
		return mv;
	}
	
	/**
	 * 드론 배달 주문석 작성 취소
	 */
	@RequestMapping(value="cancelAppl.do")
	public String cancelAppl(){
		return "main";
	}
	
	/**
	 * 드론 배달 주문서 신청완료
	 * @param dto
	 * @return
	 */
	@RequestMapping(value = "deliveryService.do", method=RequestMethod.POST)
	public ModelAndView deliveryService(Delivery dto){
		System.out.println("###con");
		ModelAndView mv = new ModelAndView();
//		
//		if ( dto != null ) {
//			deliveryService.deliveryService(dto);
//			mv.setViewName("main");
//		}
		return mv;
	}
	
	/**
	 * 신청서 작성 수정
	 * @param dto
	 * @return
	 */
	@RequestMapping(value ="modifyDelivery.do", method=RequestMethod.POST)
	public ModelAndView modifyDelivery(Delivery dto){
		ModelAndView mv = new ModelAndView();
		try {
			double distance = Utility.getDistnace(dto.getSenderAddrOld(), dto.getReceiverAddrOld());
			mv.addObject("distance", distance);
			System.out.println("##distance"+distance);
			//dto.setFare(fareService.fareCalc(distance));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		mv.addObject("delivery", dto);
		mv.setViewName("delivery/modifyDelivery");
		return mv;
		
	}
	
	/**
	 * 내 배송신청 목록 조회
	 * @param senderId
	 * @return
	 */
	@RequestMapping(value="myDelivery.do")
	public ModelAndView myDelivery(HttpSession session){
		String senderId = (String)session.getAttribute("userid");
		ModelAndView mv = new ModelAndView();
		List<Delivery> list = deliveryService.myDelivery(senderId);
		if( list != null) {
			mv.addObject("list", list);
			mv.setViewName("delivery/myDelivery");
		}
		return mv;
	}
	
	/**
	 * 배송신청 취소
	 * @param session
	 * @param deliveryNo
	 * @return
	 */
	@RequestMapping(value="cancelDelivery.do")
	public ModelAndView cancelDelivery(HttpSession session, int deliveryNo){
		String senderId = (String)session.getAttribute("userid");
		ModelAndView mv = new ModelAndView();
		List<Delivery> list = deliveryService.myDelivery(senderId);
		deliveryService.cancelDelivery(deliveryNo);
		if( list != null) {
			mv.addObject("list", list);
			mv.setViewName("delivery/myDelivery");
		}
		return mv;
	}
	
	@RequestMapping(value="deliveryReadyView.do")
	public ModelAndView deliveryReady(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/deliveryReady");
		
		return mv;
	}
	
	/**
	 * 드론 출발 준비 목록
	 * @param senderId
	 * @return
	 */
	@RequestMapping(value="deliveryReady.do")
	public ModelAndView deliveryReady(HttpSession session){
		String senderId = (String)session.getAttribute("userid");
		ModelAndView mv = new ModelAndView();
		List<Delivery> list = deliveryService.deliveryReady();
		if( list != null) {
			mv.addObject("list", list);
			mv.setViewName("admin/deliveryReady");
		}
		return mv;
	}
	
	/**
	 * 배송신청 취소
	 * @param session
	 * @param deliveryNo
	 * @return
	 */
	@RequestMapping(value="sendDrone.do")
	public ModelAndView sendDrone(HttpSession session, int deliveryNo, String beaconName){
		ModelAndView mv = new ModelAndView();
		Delivery dto = new Delivery();
		dto.setDeliveryNo(deliveryNo);
		dto.setBeaconName(beaconName);
		List<Delivery> list = deliveryService.deliveryReady();
//		List<Delivery> alist = deliveryService.sendDrone(deliveryNo, beaconName);
		deliveryService.sendDrone(dto);
		if( list != null) {
			mv.addObject("list", list);
			mv.setViewName("delivery/deliveryReady");
		}
		return mv;
	}
	
	/**
	 * 드론 출발 준비 목록
	 * @param senderId
	 * @return
	 */
	@RequestMapping(value="deliveryList.do")
	public ModelAndView deliveryList(HttpSession session){
		String senderId = (String)session.getAttribute("userid");
		ModelAndView mv = new ModelAndView();
		List<Delivery> list = deliveryService.deliveryList();
		if( list != null) {
			mv.addObject("list", list);
			mv.setViewName("admin/deliveryReady");
		}
		return mv;
	}
}
