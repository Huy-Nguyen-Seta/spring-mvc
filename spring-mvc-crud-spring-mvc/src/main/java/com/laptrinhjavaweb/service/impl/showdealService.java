package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.converter.CategoryConverter;
import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.dto.showdealDTO;
import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.entity.NewEntity;
import com.laptrinhjavaweb.entity.showDealentity;
import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.repository.showDealrepository;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.INewService;
import com.laptrinhjavaweb.service.IShowdealservice;

@Service
public class showdealService implements IShowdealservice {

	@Autowired 
	private showDealrepository sdrp;
	@Autowired
	private INewService newsv;
	@Override
	public List<showdealDTO> findAll(long dealid) {
		List<showdealDTO> dto=new ArrayList<showdealDTO>();
		List<showDealentity> entity=sdrp.findAll();
		for (showDealentity showDealentity : entity) {
			
			if(showDealentity.getMahd()==dealid) {
			showdealDTO a =new showdealDTO();
			a.setMahd(showDealentity.getMahd());
			a.setMasp(showDealentity.getMasp());
			a.setSoluong(showDealentity.getSoluong());
			a.setNews(newsv.findById(a.getMasp()));
			NewDTO b=a.getNews();
			b.setGiacuoi(b.getGia()*a.getSoluong());
		
			a.setNews(b);
			
			dto.add(a);
			}
			
		}
		return dto;
	}

	@Override
	public int getTotalItem() {
		
		return 0;
	}

	@Override
	public void save(showdealDTO dto) {
	
		showDealentity entity=new showDealentity();
		entity.setMahd(dto.getMahd());
		entity.setMasp(dto.getMasp());
		entity.setSoluong(dto.getSoluong());
		
		
		 sdrp.save(entity);
	}

	@Override
	public void delete(long[] ids) {
		for (long l : ids) {
			sdrp.delete(l);
		}
		
	}

	@Override
	public List<showdealDTO> findAll1() {
	
		return null;
	}
	
}
