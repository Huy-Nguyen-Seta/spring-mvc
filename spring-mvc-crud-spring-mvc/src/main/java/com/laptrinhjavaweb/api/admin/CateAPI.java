package com.laptrinhjavaweb.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.CategoryDTO;

import com.laptrinhjavaweb.service.ICategoryService;


@RestController(value = "CATEAPIOfAdmin")
public class CateAPI {
	
	@Autowired
	private ICategoryService newService1;
	
	@PostMapping("/api/cate")
	public CategoryDTO createNew(@RequestBody CategoryDTO newDTO) {
		return newService1.save(newDTO);
	}
	
	@PutMapping("/api/cate")
	public CategoryDTO updateNew(@RequestBody CategoryDTO updateNew) {
		return newService1.save(updateNew);
	}
	
	@DeleteMapping("/api/cate")
	public void deleteNew(@RequestBody long[] ids) {
		newService1.delete(ids);
	}
}
