package com.pm.onlinetest.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.pm.onlinetest.domain.Authority;
import com.pm.onlinetest.domain.User;

@Repository
public interface AuthorityRepository extends CrudRepository<Authority, Integer> {

//	@Query("SELECT a FROM Authority a WHERE a.user =:user")
//	List<Authority> findByUser(@Param("user") User user);
}
