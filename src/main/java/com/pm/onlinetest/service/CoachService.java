package com.pm.onlinetest.service;

import java.util.List;

import com.pm.onlinetest.domain.Student;
import com.pm.onlinetest.domain.User;


 
public interface CoachService {

	List<Student> findStudentByAcitveJobStatus();	
	Student findStudentById(Integer userId);
/*	public List<Student> findStudentsNeededAssignmentByCoach(Integer userId);
 * 
 *
*/	
 }
