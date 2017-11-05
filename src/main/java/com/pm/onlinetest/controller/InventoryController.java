package com.pm.onlinetest.controller;


import java.util.Locale;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pm.onlinetest.domain.Inventory;
import com.pm.onlinetest.domain.User;
import com.pm.onlinetest.service.InventoryService;
import com.pm.onlinetest.service.UserService;
import com.pm.onlinetest.service.impl.InventoryServiceImpl;

@Controller
@RequestMapping(value="/inventory")
public class InventoryController {

	@Autowired
	InventoryService inventoryService;
	
	@RequestMapping(value="", method = RequestMethod.GET)
	public String listInventory(Locale locale, Model model) {
		
		
		/*for(Inventory i : inventoryService.getInventories()){
			System.out.println(i.getName());
			
			
		}*/
		
		model.addAttribute("inventories", inventoryService.getInventories());	
 		return "inventory";
	}
	
	@RequestMapping(value="/add" , method = RequestMethod.GET)
	public String addInventory(Inventory invenotry, Model model) {
		
		 		return "addInventory";
	}
	
	@RequestMapping(value="/add" , method = RequestMethod.POST)
	public String addInventory(@Valid @ModelAttribute("inventory") Inventory inventory , BindingResult result, RedirectAttributes redirectAttr) {
		System.out.println(inventory.getName());
		
		
		inventoryService.create(inventory);
 		return "redirect:/inventory";
	}
	
	
	@RequestMapping(value="/delete" , method = RequestMethod.GET)
	public String deleteInventory(@RequestParam("id") Integer id) {
		
		
		inventoryService.remove(id);
 		return "redirect:/inventory";
	}
		
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String getEditPage(@PathVariable Integer id, Model model) {	
		Inventory inventory = inventoryService.getInventoryById(id);
		model.addAttribute("inventory",inventory);

		//System.out.println("this is my inventory : "+ inventory.getName() );
		
 		return "updateInventory";
	}
	
	@RequestMapping(value="/edit/{id}" , method = RequestMethod.POST)
	public String update(@ModelAttribute("inventory") Inventory inventory , BindingResult result, RedirectAttributes redirectAttr) {	
 		
		
		inventoryService.update(inventory);
		return "redirect:/inventory";
	}
	
	
}
