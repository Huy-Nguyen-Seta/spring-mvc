package com.laptrinhjavaweb.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.dto.dealDTO;


public interface Idealservice {
	List<dealDTO> findAll(Pageable pageable,long tt);
	int getTotalItem(long tt);
	dealDTO findById(long id);
	long save(dealDTO dto);
	void delete(long ids);
	List<dealDTO> findAll1();
	void settt(long id);
}
//https://hentaihaven.xxx/watch/eroge-h-mo-game-mo-kaihatsu-zanmai/