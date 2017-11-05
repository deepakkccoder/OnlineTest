package com.pm.onlinetest.service;

import java.util.List;

import com.pm.onlinetest.domain.Contactus;

public interface ContactUsService {
	
	public void save(Contactus contact);
	public Contactus findByid(Long id);
	public List<Contactus> findAll();
	

}
