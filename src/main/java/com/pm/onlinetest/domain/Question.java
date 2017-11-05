package com.pm.onlinetest.domain;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Question {

	
	
	@Id
	@GeneratedValue
	private Integer id;
	
	@NotEmpty(message="Question can not empty")
	private String description;


	@Transient
	private String category;
	

	@ManyToOne
	@JoinColumn(name = "subcategory_id")
	private Subcategory subcategory;


	@OneToMany(fetch = FetchType.EAGER, mappedBy = "question", cascade = CascadeType.ALL)
	private List<Choice> choices;
		

   


    @OneToMany(fetch=FetchType.EAGER, mappedBy = "question", cascade = CascadeType.ALL)
	private Set<Test> tests;
  
	
	


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public List<Choice> getChoices() {
		return choices;
	}

	public void setChoices(List<Choice> choices) {
		this.choices = choices;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Subcategory getSubcategory() {
		return subcategory;
	}

	public void setSubcategory(Subcategory subcategory) {
		this.subcategory = subcategory;
	}

	public Set<Test> getTests() {
		return tests;
	}

	public void setTests(Set<Test> tests) {
		this.tests = tests;
	}


	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}



	


	

}
