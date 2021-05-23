package com.laptrinhjavaweb.converter;

import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.entity.NewEntity;

@Component
public class NewConverter {

	public NewDTO toDto(NewEntity entity) {
		NewDTO result = new NewDTO();
		result.setId(entity.getId());
		result.setTitle(entity.getTitle());
		result.setShortDescription(entity.getShortDescription());
		result.setContent(entity.getContent());
		result.setThumbnail(entity.getThumbnail());
		result.setCategoryCode(entity.getCategory().getCode());
		
	    result.setChieudai(entity.getChieudai());
	    result.setChieurong(entity.getChieurong());
	   
	    
	    if(entity.getSoluongmua()>0) {
	    result.setSoluongmua(entity.getSoluongmua());
	    }else {
	    	  result.setSoluongmua(0);
	    }
	    if(entity.getSoluongton()>0) {
	    result.setSoluongton(entity.getSoluongton());}
	    else {
	    	 result.setSoluongton(0);}
	    
	    if(entity.getGia()>0) {
	    result.setGia(entity.getGia());
	    }else {
	    	  result.setGia(0);
	    }
	    
	    result.setChatlieu(entity.getChatlieu());
		return result;
	}
	
	public NewEntity toEntity(NewDTO dto) {
		NewEntity result = new NewEntity();
		result.setTitle(dto.getTitle());
		result.setShortDescription(dto.getShortDescription());
		result.setContent(dto.getContent());
		result.setThumbnail(dto.getThumbnail());
		
	    result.setChieudai(dto.getChieudai());
	    result.setChieurong(dto.getChieurong());
	    if(dto.getSoluongmua()>0) {
		    result.setSoluongmua(dto.getSoluongmua());
		    }else {
		    	  result.setSoluongmua(0);
		    }
		    if(dto.getSoluongton()>0) {
		    result.setSoluongton(dto.getSoluongton());}
		    else {
		    	 result.setSoluongton(0);}
		    
		    if(dto.getGia()>0) {
		    result.setGia(dto.getGia());
		    }else {
		    	  result.setGia(0);
		    }
	    result.setChatlieu(dto.getChatlieu());
		return result;
	}
	
	public NewEntity toEntity(NewEntity result, NewDTO dto) {
		result.setTitle(dto.getTitle());
		result.setShortDescription(dto.getShortDescription());
		result.setContent(dto.getContent());
		result.setThumbnail(dto.getThumbnail());
		
	    result.setChieudai(dto.getChieudai());
	    result.setChieurong(dto.getChieurong());
	    if(dto.getSoluongmua()>0) {
		    result.setSoluongmua(dto.getSoluongmua());
		    }else {
		    	  result.setSoluongmua(0);
		    }
		    if(dto.getSoluongton()>0) {
		    result.setSoluongton(dto.getSoluongton());}
		    else {
		    	 result.setSoluongton(0);}
		    
		    if(dto.getGia()>0) {
		    result.setGia(dto.getGia());
		    }else {
		    	  result.setGia(0);
		    }
	    result.setChatlieu(dto.getChatlieu());
	
		return result;
	}
}
