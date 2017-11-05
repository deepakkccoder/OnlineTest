package com.pm.onlinetest.service;

import java.util.List;

import com.pm.onlinetest.domain.Category;

public interface CategoryService {

	public List<Category> findAll();
	public List<Category> findAllEnabled();
	public Category findOne(Integer categoryId);
	public void softDelete(Integer categoryId);
	public void save(Category category);
	public List<Category> findCategoryByName(String name);
	// void update(long id,Question book);
	// void delete(long id);
}
