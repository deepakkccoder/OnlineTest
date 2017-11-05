package com.pm.onlinetest.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.pm.onlinetest.domain.Grade;

@Repository
public interface GradeRepository extends CrudRepository<Grade, String> {

	/*
	 * This is working or not complete there is a bug somewhere
	 * 
	 * @Query(value =
	 * "REPLACE into Grade(name, rangeFrom, rangeTo) values(:name,:rangeFrom,:rangeTo)"
	 * ,nativeQuery = true) void replaceGrade(@Param("name") String
	 * name, @Param("rangeFrom") Integer rangeFrom,
	 * 
	 * @Param("rangeTo") Integer rangeTo);
	 */

	@Query(value = "SELECT name, rangeFrom, rangeTo FROM Grade WHERE :x between rangeFrom and rangeTo Limit 1", nativeQuery = true)
	Grade get(@Param("x") Integer x);

}
