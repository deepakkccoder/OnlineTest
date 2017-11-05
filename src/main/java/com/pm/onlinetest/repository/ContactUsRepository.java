package com.pm.onlinetest.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.pm.onlinetest.domain.Contactus;

@Repository
public interface ContactUsRepository extends CrudRepository<Contactus,Long>{

}
