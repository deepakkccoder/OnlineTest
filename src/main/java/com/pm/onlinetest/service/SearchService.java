package com.pm.onlinetest.service;

import java.util.List;

import com.pm.onlinetest.domain.Authority;
import com.pm.onlinetest.domain.Question;
import com.pm.onlinetest.domain.User;

 
public interface SearchService {

	
	public List<Question> findAll();
 }
