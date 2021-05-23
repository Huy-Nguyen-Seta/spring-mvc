package com.laptrinhjavaweb.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;


import com.laptrinhjavaweb.entity.dealEntity;

public interface Dealrepository extends JpaRepository<dealEntity, Long> {
	List<dealEntity> findAllByTt(long tt,Pageable pageable);
	
}
