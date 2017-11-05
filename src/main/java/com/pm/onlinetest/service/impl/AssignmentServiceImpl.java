package com.pm.onlinetest.service.impl;

import java.security.SecureRandom;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pm.onlinetest.domain.Assignment;
import com.pm.onlinetest.domain.Student;
import com.pm.onlinetest.repository.StudentRepository;
import com.pm.onlinetest.repository.AssignmentRepository;
import com.pm.onlinetest.service.AssignmentService;

@Service
@Transactional
public class AssignmentServiceImpl implements AssignmentService {
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private AssignmentRepository assignmentRepository;

	@Override
	public String generateAccesscode() {
		String accesscode;
		StringBuilder stringOfAll = new StringBuilder();
		for (char ch = '0'; ch <= '9'; ++ch)
			stringOfAll.append(ch);
		for (char ch = 'a'; ch <= 'z'; ++ch)
			stringOfAll.append(ch);
		for (char ch = 'A'; ch <= 'Z'; ++ch)
			stringOfAll.append(ch);

		String stringOfAllCharacters = stringOfAll.toString();
		accesscode = randomString(10, stringOfAllCharacters);
		while (isExist(accesscode)) {
			accesscode = randomString(10, stringOfAllCharacters);
		}
		System.out.println("AccessCode: " + accesscode);
		return accesscode;
	}

	@Override
	public Boolean isExist(String accesscode) {

		Assignment assignment = assignmentRepository.findByAccesscode(accesscode);

		if (assignment != null) {
			return true;
		}
		return false;
	}

	static String randomString(int len, String stringOfAllCharacters) {
		SecureRandom random = new SecureRandom();
		StringBuilder stringBuilder = new StringBuilder(len);
		for (int i = 0; i < len; i++)
			stringBuilder.append(stringOfAllCharacters.charAt(random.nextInt(stringOfAllCharacters.length())));
		return stringBuilder.toString();
	}

	@Override
	public List<Assignment> findByStudent(Student student) {
		// TODO Auto-generated method stub
		return assignmentRepository.findByStudent(student);
	}

	@Override
	public void saveAssignment(Assignment assignment) {
		// TODO Auto-generated method stub
		assignmentRepository.save(assignment);
	}

	@Override
	public Student getStudentById(String studentId) {
		return studentRepository.findByStudentId(studentId);
	}

	@Override
	public Assignment findById(Integer id) {
		return assignmentRepository.findById(id);
	}

	@Override
	public List<Assignment> findAll() {
		// TODO Auto-generated method stub
		return (List<Assignment>) assignmentRepository.findAll();
	}

	@Override
	public Assignment getAssignment(String accesscode) {
		// TODO Auto-generated method stub
		return assignmentRepository.getAssignment(accesscode);
	}

	@Override
	public void updateAccessCount(Assignment assignment) {
		// TODO Auto-generated method stub
		assignmentRepository.save(assignment);
	}
	
	@Override
	public Assignment findByStudentIdByFinish(Student student) {
		// TODO Auto-generated method stub
		return assignmentRepository.findByStudentIdByFinish(student);
	}

	@Override
	public Assignment findByAccesscode(String accessCode) {
		// TODO Auto-generated method stub
		return assignmentRepository.findByAccesscode(accessCode);
	}	

}
