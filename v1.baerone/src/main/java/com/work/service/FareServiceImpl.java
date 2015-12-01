package com.work.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.work.dao.FareDAOImpl;

@Service
public class FareServiceImpl implements FareService {
	private FareDAOImpl fareDAO;
	
	@Autowired
	public void setService(FareDAOImpl fareDAO){
		this.fareDAO = fareDAO;
	}
	
	public String fareCalc(double distance){
		return fareDAO.fareCalc(distance);
	}

}
