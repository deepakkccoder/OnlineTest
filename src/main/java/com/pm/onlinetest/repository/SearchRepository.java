package com.pm.onlinetest.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.pm.onlinetest.domain.Question;

//searching questions and display on table 
@Repository
public interface SearchRepository extends CrudRepository<Question, Integer> {

}
