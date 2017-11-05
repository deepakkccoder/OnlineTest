package com.pm.onlinetest.domain;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity
public class Subcategory {

	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private boolean enabled;
	@Transient
	private Integer categoryId;
	@Transient
	private Integer questionCount;
	
	@ManyToOne
	@JoinColumn(name = "category_id")
	private Category category;

	@OneToMany(mappedBy = "subcategory", cascade = CascadeType.ALL)
	private Set<Question> questions;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name.trim().toUpperCase();
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "enabled", nullable = false, columnDefinition = "BIT default TRUE", length = 1)
	public boolean isEnabled() {
		return this.enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public Integer getQuestionCount() {
		return questions.size();
	}


	
}
