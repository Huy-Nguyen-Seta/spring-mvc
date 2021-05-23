package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptrinhjavaweb.converter.NewConverter;
import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.entity.NewEntity;
import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.repository.NewRepository;
import com.laptrinhjavaweb.service.INewService;

@Service
public class NewService implements INewService {
	
	@Autowired
	private NewRepository newRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private NewConverter newConverter;
	
	@Override
	public List<NewDTO> findAll(Pageable pageable) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAll(pageable).getContent();
		for (NewEntity item: entities) {
			NewDTO newDTO = newConverter.toDto(item);
			models.add(newDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) newRepository.count();
	}

	@Override
	public NewDTO findById(long id) {
		NewEntity entity = newRepository.findOne(id);
		return newConverter.toDto(entity);
	}
	
	@Override
	@Transactional
	public NewDTO save(NewDTO dto) {
		CategoryEntity category = categoryRepository.findOneByCode(dto.getCategoryCode());
		NewEntity newEntity = new NewEntity();
		if (dto.getId() != null) {
			NewEntity oldNew = newRepository.findOne(dto.getId());
			oldNew.setCategory(category);
			newEntity = newConverter.toEntity(oldNew, dto);
		} else {
			newEntity = newConverter.toEntity(dto);
			newEntity.setCategory(category);
		}
		return newConverter.toDto(newRepository.save(newEntity));
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id: ids) {
			newRepository.delete(id);
		}
	}

	@Override
	public List<NewDTO> findAll(Pageable pageable, int cate) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAll(pageable).getContent();
		for (NewEntity item: entities) {
			if(item.getCategory().getId()==cate) {
			NewDTO newDTO = newConverter.toDto(item);
			models.add(newDTO);
		
			}
		}
		return models;
	}

	@Override
	public List<NewDTO> findAll(int cate) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAll();
		for (NewEntity item: entities) {
			if(item.getCategory().getId()==cate) {
			NewDTO newDTO = newConverter.toDto(item);
			if(entities.size()==1) {
				models.add(newDTO);
				models.add(newDTO);
				models.add(newDTO);
				}
				if(entities.size()==2) {
					models.add(newDTO);
					models.add(newDTO);
					
					}
				if(entities.size()>2) {
					models.add(newDTO);
				}
			
			
			}
		}
		return models;
	}
	@Override
	public List<NewDTO> findAll1(long cate) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAll();
	
		for (NewEntity item: entities) {
			if(item.getCategory().getId()==cate) {
			NewDTO newDTO = newConverter.toDto(item);
			models.add(newDTO);
			
		}
		}
		return models;
	}

	@Override
	public List<NewDTO> findbycateandnew(String cate, String news) {
		List<NewDTO> dto=new ArrayList<>();
		
		
		List<CategoryEntity> cateentity=categoryRepository.findAll();
		for (CategoryEntity categoryEntity : cateentity) {
			
			if(categoryEntity.getName().indexOf(cate)>=0||cate==null) {
				
				List<NewDTO> a= findAll1(categoryEntity.getId());
				for (NewDTO newdto : a) {
					newdto.setCategoryId(categoryEntity.getId());
					
					if(newdto.getTitle().indexOf(news)>=0||news==null) {
						dto.add(newdto);
					}
					
				}
			}
			
		}
		return dto;
	}
}
