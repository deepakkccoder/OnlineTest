package com.pm.onlinetest.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.pm.onlinetest.domain.Category;
import com.pm.onlinetest.domain.Subcategory;

@Repository
public interface SubCategoryRepository extends CrudRepository<Subcategory, Integer> {

	
	@Query("FROM Subcategory sc WHERE sc.enabled = true")
	public List<Subcategory> findAllEnabled();

	@Modifying(clearAutomatically = true)
	@Transactional
	@Query("UPDATE Subcategory sc SET sc.enabled = false WHERE sc.id =:id")
	void softDelete(@Param("id") Integer id);
	
	@Query("SELECT sc FROM Subcategory sc WHERE sc.name=:name AND sc.enabled = true")
	public List<Subcategory> findSubCategoryByName(@Param("name") String name);
	
	@Query("SELECT sc FROM Subcategory sc WHERE sc.category=:category")
	public List<Subcategory> findByCategoryId(@Param("category") Category category);
}
