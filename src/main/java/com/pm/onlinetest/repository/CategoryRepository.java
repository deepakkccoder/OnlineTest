package com.pm.onlinetest.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.pm.onlinetest.domain.Category;

@Repository
public interface CategoryRepository extends CrudRepository<Category, Integer> {

	@Query("FROM Category c WHERE c.enabled = true")
	public List<Category> findAllEnabled();
	
	@Modifying(clearAutomatically = true)
	@Transactional
	@Query("UPDATE Category c SET c.enabled = false WHERE c.id =:id")
	void softDelete(@Param("id") Integer id);
	
	@Query("SELECT c FROM Category c WHERE c.name=:name AND c.enabled = true")
	public List<Category> findCategoryByName(@Param("name") String name);
}
