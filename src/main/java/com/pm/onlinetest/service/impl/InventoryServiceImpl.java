package com.pm.onlinetest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pm.onlinetest.domain.Inventory;
import com.pm.onlinetest.repository.InventoryRepository;
import com.pm.onlinetest.service.InventoryService;

@Service
public class InventoryServiceImpl implements InventoryService {
	
	@Autowired
	InventoryRepository inventoryRepository;

	@Override
	public Iterable<Inventory> getInventories() {
		return inventoryRepository.findAll();
	}
	
	
	public void create(Inventory inventory){
		inventoryRepository.save(inventory);
	}


	@Override
	public void remove(Integer id) {
		inventoryRepository.delete(id);
		
	}


	@Override
	public Inventory getInventoryById(Integer id) {
		return inventoryRepository.findOne(id);
	}


	@Override
	public void update(Inventory inventory) {
		// TODO Auto-generated method stub
		
		inventoryRepository.save(inventory);
		
	}


	@Override
	public String getInventoryFromName(String name) {
		// TODO Auto-generated method stub
		return inventoryRepository.getInventoryFromName(name).getValue();
		
	}
	

}
