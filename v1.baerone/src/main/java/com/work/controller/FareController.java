package com.work.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.work.service.FareServiceImpl;



@Controller
public class FareController {
	FareServiceImpl fareService;
	
	@Autowired
	public void setDeliveryService(FareServiceImpl fareService) {
		this.fareService = fareService;
	}

}
