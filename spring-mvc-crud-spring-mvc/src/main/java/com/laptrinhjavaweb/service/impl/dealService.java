package com.laptrinhjavaweb.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


import com.laptrinhjavaweb.dto.dealDTO;
import com.laptrinhjavaweb.dto.showdealDTO;
import com.laptrinhjavaweb.entity.dealEntity;

import com.laptrinhjavaweb.repository.Dealrepository;

import com.laptrinhjavaweb.service.IShowdealservice;
import com.laptrinhjavaweb.service.IUsersevice;
import com.laptrinhjavaweb.service.Idealservice;

@Service
public class dealService implements Idealservice {
@Autowired
private Dealrepository dealrp;
@Autowired
private IShowdealservice showdeal;
@Autowired
private IUsersevice usersv;
	@Override
	public List<dealDTO> findAll(Pageable pageable,long tt) {
		List<dealDTO> models = new ArrayList<>();
		List<dealEntity> entities = dealrp.findAllByTt(tt, pageable);
		for (dealEntity item: entities) {
			if(item.getTt()==tt) {
				System.out.println(item.getId());
			dealDTO newDTO = new dealDTO();
			newDTO.setTt(item.getTt());
			newDTO.setMakh(item.getMakh());
			newDTO.setId(item.getId());
			
		    newDTO.setShowdeal(showdeal.findAll(item.getId()));
		  for (showdealDTO sdealEntity : newDTO.getShowdeal()) {
			  newDTO.setGiahoadon(newDTO.getGiahoadon()+sdealEntity.getNews().getGiacuoi());
			
			
		}
		    newDTO.setUser(usersv.findbyid(newDTO.getMakh()));
		 
		    newDTO.setCreatedDate((Timestamp)item.getCreatedDate());
			models.add(newDTO);
		}
		}
		return models;
	}

	@Override
	public int getTotalItem(long tt) {
		int i=0;
		List<dealEntity> entities = dealrp.findAll();
		for (dealEntity dealEntity : entities) {
			if(dealEntity.getTt()==tt) {
				i++;
			}
			
		}
		return i;
	}

	@Override
	public dealDTO findById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long save(dealDTO dto) {
		dealEntity entity=new dealEntity();
		entity.setMakh(dto.getMakh());
		entity.setTt(0);
		return dealrp.save(entity).getId();
		
		
	}

	@Override
	public void delete(long ids) {
		
			dealrp.delete(ids);
		
		
	}

	@Override
	public List<dealDTO> findAll1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void settt(long id) {
		dealEntity entity= dealrp.findOne(id);
		entity.setTt(1);
		dealrp.save(entity);
		
	}
	
	
}
