package com.work.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.work.dto.Delivery;
import com.work.dto.Member;
import com.work.dto.Paging;
import com.work.service.AdminServiceImpl;
import com.work.service.DeliveryServiceImpl;
import com.work.service.FareServiceImpl;
import com.work.service.MemberServiceImpl;
import com.work.util.Utility;

@Controller
public class DeliveryController {
	private DeliveryServiceImpl deliveryService;
	private MemberServiceImpl memberService;
	private FareServiceImpl fareService;
	private AdminServiceImpl adminService;
	
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
	
	@Autowired
	public void setService(AdminServiceImpl adminService){
		this.adminService = adminService;
	}
	
	/**
	 * 占쏙옙聘占시� 占쏙옙 占싱듸옙
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
	 * 占쏙옙占� 占쌍뱄옙占쏙옙 占쏙옙청 占쏙옙占쏙옙 확占쏙옙
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
	 * 占쏙옙占쏙옙 占싯억옙
	 * @param dto 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="payment.do", method=RequestMethod.POST)
	public ModelAndView payment(Delivery dto, HttpSession session, ModelAndView mv){
		String senderId = (String)session.getAttribute("userid");
		dto.toString();
		dto.setSenderId(senderId);
		mv.addObject("dto", dto);
		HashMap<String, Object> resultMap = deliveryService.getAllBoard(1, senderId);
		mv.addObject("list", (List<Delivery>) resultMap.get("list"));
		mv.addObject("paging", (Paging) resultMap.get("paging"));
		mv.addObject("page", 1);
		mv.setViewName("delivery/myDelivery");
		
		if ( dto != null ) {
		deliveryService.deliveryService(dto);
	}
		
		return mv;
	}
	
	/**
	 * 占쏙옙占� 占쏙옙占� 占쌍뱄옙占쏙옙 占쌜쇽옙 占쏙옙占�
	 */
	@RequestMapping(value="cancelAppl.do")
	public String cancelAppl(){
		return "main";
	}
	
	/**
	 * 占쏙옙占� 占쏙옙占� 占쌍뱄옙占쏙옙 占쏙옙청占싹뤄옙
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
	 * 占쏙옙청占쏙옙 占쌜쇽옙 占쏙옙占쏙옙
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
	 * 諛곗넚�젙蹂� 由ъ뒪�듃瑜� 異쒕젰�븯�뒗 酉곕줈 �씠�룞 �슂泥�
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="myDelivery.do")
	public ModelAndView myDelivery(HttpSession session, ModelAndView mv, int page){
		String userid = (String) session.getAttribute("userid");
		HashMap<String, Object> resultMap = deliveryService.getAllBoard(page, userid);
			mv.addObject("list", (List<Delivery>) resultMap.get("list"));
			mv.addObject("paging", (Paging) resultMap.get("paging"));
			mv.addObject("page", page);
			mv.setViewName("delivery/myDelivery");
		return mv;
	}
	
	/**
	 * @param session
	 * @param deliveryNo
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="cancelDelivery.do")
	public ModelAndView cancelDelivery(HttpSession session, int deliveryNo){
		String userid = (String)session.getAttribute("userid");
		int page = 1;
		ModelAndView mv = new ModelAndView();
		int cancel = deliveryService.cancelDelivery(deliveryNo);
		if(cancel == 1){
			HashMap<String, Object> resultMap = deliveryService.getAllBoard(page, userid);
			mv.addObject("list", (List<Delivery>) resultMap.get("list"));
			mv.addObject("paging", (Paging) resultMap.get("paging"));
			mv.addObject("page", page);
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
	 * 占쏙옙占� 占쏙옙占� 占쌔븝옙 占쏙옙占�
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
	 * 占쏙옙占� 占쏙옙占�
	 * @param session
	 * @param deliveryNo
	 * @return
	 */
	@RequestMapping(value="sendDrone.do", method=RequestMethod.POST)
	public ModelAndView sendDrone(int deliveryNo, String beaconName){
		System.out.println("####"+beaconName + "nono" + deliveryNo);
		ModelAndView mv = new ModelAndView();
		Delivery dto = new Delivery();
		dto.setDeliveryNo(deliveryNo);
		dto.setBeaconName(beaconName);
		deliveryService.sendDrone(dto);
		List<Delivery> list = adminService.deliveryList();
		//if( list != null) {
			mv.addObject("list", list);
			mv.setViewName("admin/mgDelivery");
		//}
			/**
		try {
			Utility.sendMessageToSender();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		**/
		return mv;
		
	}
	
	/**
	 * 占쏙옙占� 占쏙옙占� 占쌔븝옙 占쏙옙占�
	 * @param senderId
	 * @return
	 */
	@RequestMapping(value="deliveryList.do")
	public ModelAndView deliveryList(HttpSession session){
		ModelAndView mv = new ModelAndView();
		List<Delivery> list = deliveryService.deliveryList();
		if( list != null) {
			mv.addObject("list", list);
			mv.setViewName("admin/deliveryList");
		}
		return mv;
	}
	
	 /**
	    * 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙 占싯삼옙
	    * @param searchBox
	    * @return
	    */
	   @RequestMapping(value = "searchList.do", method=RequestMethod.POST )
	   public ModelAndView searchList(String searchBox, String category) {
		   System.out.println(searchBox + category);
	      List<Delivery> list = deliveryService.searchList(searchBox, category);
	      ModelAndView mv = new ModelAndView();
	      System.out.println("!!!!!!!!!!!!"+list.toString());
	      if(list.size()>0) {
	      mv.addObject("list", list);
	      mv.setViewName("admin/deliveryList");
	     System.out.println("####if");
	      } else {
	    	  mv.addObject("message", "占싯삼옙占쏙옙 占쏙옙占쏙옙占� 占쏙옙占쏙옙占싹댐옙.");
	      }
	      return mv;
	   }
	   @RequestMapping(value="searchUserId.do", method=RequestMethod.GET)
	   @ResponseBody
	   public void searchUserId(String phone, HttpServletResponse response){
		   String userid = deliveryService.searchUserId(phone);
		   try {
			response.getWriter().print(userid);
		} catch (IOException e) {
			e.printStackTrace();
		}
	   }
	   /**
	    * 드론 배달 신청 수정 페이지 이동요청 
	    * @param deliveryNo
	    * @return
	    */
	   @RequestMapping(value="deliveryUpdateInfo")
	   public ModelAndView deliveryUpdateInfo(int deliveryNo) {
		   ModelAndView mv = new  ModelAndView();
		   List<Delivery> list = deliveryService.deliveryUpdateInfo(deliveryNo);
		   mv.addObject("list", list);
		   mv.setViewName("delivery/modifyDelivery");
		   return mv;
	   }
	   @RequestMapping(value="updateDelivery.do")
	   public ModelAndView updateDelivery(Delivery dto){
		   ModelAndView mv = new ModelAndView();
		   int update = deliveryService.updateDelivery(dto);
		   List<Delivery> list = deliveryService.myDeliveryDetail(dto.getProductDetail());
		   String message = "수정성공";
		   if ( update == 1 ) {
			   mv.addObject("message", message);
			   mv.addObject("list", list);
			   mv.setViewName("delivery/myDeliveryMore");
		   }
		   return mv;
	   }
		@RequestMapping(value="myDeliveryDetail")
		public ModelAndView myDeliveryDetail(String productDetail) {
			ModelAndView mv = new ModelAndView();
			List<Delivery> list = deliveryService.myDeliveryDetail(productDetail);
			System.out.println(list.size());
			mv.addObject("list", list);
			mv.setViewName("delivery/myDeliveryMore");
			return mv;
		}
		
}
