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

}
