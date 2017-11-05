package com.pm.onlinetest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pm.onlinetest.domain.Authority;
import com.pm.onlinetest.domain.Question;
import com.pm.onlinetest.domain.User;
import com.pm.onlinetest.repository.AuthorityRepository;
import com.pm.onlinetest.repository.SearchRepository;
import com.pm.onlinetest.service.AuthorityService;
import com.pm.onlinetest.service.SearchService;

@Service
@Transactional
public class SearchServiceImpl implements SearchService {

	@Autowired
	private SearchRepository searchRepo;

	@Override
	public List<Question> findAll() {		
		return (List<Question>)searchRepo.findAll();
	}

	

	
}
