package com.laptrinhjavaweb.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import com.laptrinhjavaweb.util.SecurityUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.CategoryDTO;

import com.laptrinhjavaweb.dto.dealDTO;
import com.laptrinhjavaweb.dto.showdealDTO;

import com.laptrinhjavaweb.service.IShowdealservice;
import com.laptrinhjavaweb.service.IUsersevice;
import com.laptrinhjavaweb.service.Idealservice;


@RestController(value = "DealAPIOfAdmin")
public class DealApi {
	
	@Autowired
	private Idealservice deal;
	
	@Autowired
	private IShowdealservice showdeal;
	@Autowired
	private IUsersevice usersv;
	
	@PostMapping("/api/deal")
	public void create(@RequestBody showdealDTO showDTO[]) {
		dealDTO dto=new dealDTO();
		String user=SecurityUtils.getPrincipal().getUsername();
		System.out.println(user);
		dto.setMakh(usersv.finbyusername(user));
		long id = deal.save(dto);
		
		for (showdealDTO showdealDTO : showDTO) {
			showdealDTO.setMahd(id);
			showdeal.save(showdealDTO);
		}
		
	}
	
	@PutMapping("/api/deal")
	public void updateNew(@RequestBody long id) {
	    deal.settt(id);
	}
	
	@DeleteMapping("/api/deal")
	public void deleteNew(@RequestBody long ids) {
		deal.delete(ids);
	
	}
}
