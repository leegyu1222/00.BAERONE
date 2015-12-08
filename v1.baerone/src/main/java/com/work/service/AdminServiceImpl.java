package com.work.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.AdminDAOImpl;

@Service
public class AdminServiceImpl implements AdminService {
	private AdminDAOImpl adminDAO;
	
	@Autowired
	public void setAdminDAO(AdminDAOImpl adminDAO){
		this.adminDAO = adminDAO;
	}

}
