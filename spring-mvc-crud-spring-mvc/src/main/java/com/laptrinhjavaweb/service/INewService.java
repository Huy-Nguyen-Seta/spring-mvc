package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.laptrinhjavaweb.dto.NewDTO;

public interface INewService {
	List<NewDTO> findAll(Pageable pageable);
	int getTotalItem();
	NewDTO findById(long id);
	NewDTO save(NewDTO dto);
	void delete(long[] ids);
	List<NewDTO> findAll(Pageable pageable,int cate);
	List<NewDTO> findAll(int cate);
	List<NewDTO> findAll1(long cate);
	List<NewDTO> findbycateandnew(String cate,String news);
}
