package com.pm.onlinetest.service;


import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

import com.pm.onlinetest.domain.Inventory;

@Service
public interface InventoryService {
	
	public Iterable<Inventory> getInventories();
	void create(Inventory inventory);
	void remove(Integer id);
	Inventory getInventoryById(Integer id);
	void update(Inventory inventory);
	String getInventoryFromName(String name);


}
