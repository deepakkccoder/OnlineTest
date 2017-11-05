package com.pm.onlinetest.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.pm.onlinetest.domain.Grade;
import com.pm.onlinetest.domain.Inventory;

@Repository
public interface InventoryRepository extends CrudRepository<Inventory, Integer> {
	
	@Query(value = "SELECT id , name, value FROM Inventory WHERE :name = name Limit 1", nativeQuery = true)
	Inventory getInventoryFromName(@Param("name") String name);

}
