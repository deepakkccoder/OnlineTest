package com.pm.onlinetest.domain;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
public class Category implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5257591481279251868L;
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	@JsonBackReference
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "category", cascade = CascadeType.ALL)
	private List<Subcategory> subcategories;
	private boolean enabled;
	@Transient
	private Integer subCategoryCount;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name.trim().toUpperCase();
	}

	public List<Subcategory> getSubcategories() {
		return subcategories;
	}

	public void setSubcategories(List<Subcategory> subcategories) {
		this.subcategories = subcategories;
	}

	@Column(name = "enabled", nullable = false, columnDefinition = "BIT default TRUE", length = 1)
	public boolean isEnabled() {
		return this.enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Integer getSubCategoryCount() {
		int count = 0;
		for(Subcategory sc: subcategories){
			if(sc.isEnabled()){
				count++;
			}
		}
		return count;
	}

}
