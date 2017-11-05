package com.pm.onlinetest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pm.onlinetest.domain.Student;
import com.pm.onlinetest.domain.User;
import com.pm.onlinetest.repository.CoachRepository;
import com.pm.onlinetest.service.CoachService;


@Service
@Transactional
public class CoachServiceImpl implements CoachService {

	@Autowired
	CoachRepository coachRepository;
	
	
	@Override
	public List<Student> findStudentByAcitveJobStatus() {
		// TODO Auto-generated method stub
		return coachRepository.findStudentByAcitveJobStatus();
	}


	@Override
	public Student findStudentById(Integer userId) {
		// TODO Auto-generated method stub
		return coachRepository.findStudentById(userId);
	}


	/*@Override
	public List<Student> findStudentsNeededAssignmentByCoach(Integer userId) {
		// TODO Auto-generated method stub
		return coachRepository.findStudentsNeededAssignmentByCoach(userId);
	}*/


}
