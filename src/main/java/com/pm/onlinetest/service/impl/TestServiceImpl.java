package com.pm.onlinetest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.onlinetest.domain.Assignment;
import com.pm.onlinetest.domain.Test;
import com.pm.onlinetest.repository.TestRepository;
import com.pm.onlinetest.service.TestService;

@Service
public class TestServiceImpl implements TestService {

	@Autowired
	TestRepository testRepository;


	@Override
	public void save(Test test) {
		testRepository.save(test);
	}

	@Override
	public List<Test> findAll() {
		return (List<Test>) testRepository.findAll();
	}

	@Override
	public List<Test> findByAssignment(Assignment assignment) {
		List<Test> tests = testRepository.findByAssignment(assignment);
		return tests;
	}

	@Override
	public Test findOne(Integer id) {		
		return testRepository.findOne(id);
	}
}
