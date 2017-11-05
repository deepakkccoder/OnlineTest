package com.pm.onlinetest.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.pm.onlinetest.domain.*;

@Repository
public interface CoachRepository extends CrudRepository<User, Integer> {
	
/*	@Query("select  distinct s from Student s  where s.coach.userId=:userId")
	List<Student> findByCoach(@Param("userId") Integer userId);
*/
	
	
	@Query("select  distinct s from Student s  where s.jobSearchStatus = true ")
	List<Student> findStudentByAcitveJobStatus();
	
	@Query("select  distinct s from Student s  where s.userId=:userId")
	Student findStudentById(@Param("userId") Integer userId);

/*	
	@Query("select  distinct s from Student s , Assignment a  "
			+ "where  s.coach.userId=:userId and a.id not in (selec)  ")
	List<Student> findStudentsNeededAssignmentByCoach(@Param("userId") Integer userId);
*/
	
	
}
