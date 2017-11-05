package com.pm.onlinetest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pm.onlinetest.domain.Student;
import com.pm.onlinetest.repository.StudentRepository;
import com.pm.onlinetest.service.StudentService;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository studentRepository;

	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void save(Student student) {
		studentRepository.save(student);		
	}

	@Override
	public List<Student> findAll() {
		return (List<Student>) studentRepository.findAll();
	}

	@Override
	public Student findByStudentId(String studentId) {
		// TODO Auto-generated method stub
		return studentRepository.findByStudentId(studentId);
	}

	@Override
	public void delete(Student student) {
		// TODO Auto-generated method stub
		studentRepository.delete(student);
	}

	@Override
	public Student findByStudentId(Integer studentId) {
		// TODO Auto-generated method stub
		return studentRepository.findOne(studentId);
	}

	@Override
	public List<Student> findAllEnabled() {
		// TODO Auto-generated method stub
		return (List<Student>) studentRepository.findAllEnabled();
	}

	@Override
	public Student findByUserId(Integer userId) {
		// TODO Auto-generated method stub
		return studentRepository.findByUserId(userId);
	}

	@Override
	public Student findByStudentIdExceptThis(String studentId, Integer userId) {
		// TODO Auto-generated method stub
		return studentRepository.findByStudentIdExceptThis(studentId, userId);
	}

}
