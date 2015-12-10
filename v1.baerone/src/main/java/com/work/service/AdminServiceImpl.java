package com.work.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.AdminDAOImpl;
import com.work.dto.Delivery;

@Service
public class AdminServiceImpl implements AdminService {
	private AdminDAOImpl adminDAO;
	
	@Autowired
	public void setAdminDAO(AdminDAOImpl adminDAO){
		this.adminDAO = adminDAO;
	}
	
	public int memberCount(){
		return adminDAO.memberCount();
	}
	
	public List<Delivery> deliveryList(){
		return adminDAO.deliveryList();
	}

	public int thisIncome() {
		return adminDAO.thisIncome();
	}
	
	public int thisOrder() {
		return adminDAO.thisOrder();
	}
	
	public int maleCount() {
		return adminDAO.maleCount();
	}
	
	public int femaleCount() {
		return adminDAO.femaleCount();
	}
	
	public int years10() {
		return adminDAO.years10();
	}
	
	public int years20() {
		return adminDAO.years20();
	}
	
	public int years30() {
		return adminDAO.years30();
	}
	
	public int years40() {
		return adminDAO.years40();
	}
	
	public int years50() {
		return adminDAO.years50();
	}
}
