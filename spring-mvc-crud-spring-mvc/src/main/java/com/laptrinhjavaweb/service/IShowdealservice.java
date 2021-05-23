package com.laptrinhjavaweb.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.dto.showdealDTO;


public interface IShowdealservice {
	List<showdealDTO> findAll(long dealid);
	int getTotalItem();
	
	void save(showdealDTO dto);
	void delete(long[] ids);
	List<showdealDTO> findAll1();
}
