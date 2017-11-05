package com.pm.onlinetest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.onlinetest.domain.Contactus;
import com.pm.onlinetest.repository.ContactUsRepository;
import com.pm.onlinetest.service.ContactUsService;
@Service
public class ContactUsServiceImpl implements ContactUsService{

	@Autowired
	ContactUsRepository contactUs;
	@Override
	public void save(Contactus contact) {
		contactUs.save(contact);
		
	}

	@Override
	public Contactus findByid(Long id) {
		return contactUs.findOne(id);
	}

	@Override
	public List<Contactus> findAll() {
		
		return (List<Contactus>) contactUs.findAll();
	}

}
