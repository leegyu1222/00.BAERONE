package com.work.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	
	@RequestMapping("index.do")
	public String login() {
		return "index";
	}
	

	//���������� �̵�
	@RequestMapping("main.do")
	public String main(){
		return "main";
}

	@RequestMapping("faq.do")
	public String faq() {
		return "faq";

	}
	
	@RequestMapping("serviceCenter.do")
	public String serviceCenter() {
		return "serviceCenter";

	}
	
}
