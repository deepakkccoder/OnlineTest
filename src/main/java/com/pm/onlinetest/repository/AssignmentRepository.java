package com.pm.onlinetest.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.pm.onlinetest.domain.Assignment;
import com.pm.onlinetest.domain.Student;
import com.pm.onlinetest.domain.User;

public interface AssignmentRepository extends CrudRepository<Assignment, Integer>{
	
	@Query("SELECT a FROM Assignment a WHERE a.accesscode = :accesscode")
	Assignment getAssignment(@Param("accesscode") String accesscode);
	
	@Query("SELECT a FROM Assignment a WHERE a.id =:id")
	Assignment findById(@Param("id") Integer id);

	/*@Query("SELECT u FROM User u WHERE u.username =:username")
	Assignment findByStartDate(@Param("username") String username);*/
	
	@Query("SELECT assignment from Assignment assignment where assignment.accesscode =:accesscode ")
	Assignment findByAccesscode(@Param("accesscode") String accesscode);

	@Query("SELECT a from Assignment a where a.studentId=:student")
	List<Assignment> findByStudent(@Param("student") Student student);
	
	@Query("SELECT a from Assignment a where a.studentId=:student and a.finished=false")
	Assignment findByStudentIdByFinish(@Param("student") Student student);


}
