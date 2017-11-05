package com.pm.onlinetest.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.pm.onlinetest.domain.Assignment;
import com.pm.onlinetest.domain.Test;

public interface TestRepository extends CrudRepository<Test, Integer>{
	
	@Query("SELECT t FROM Test t WHERE t.assignment =:assignment")
	List<Test> findByAssignment(@Param("assignment") Assignment assignment);

	
}