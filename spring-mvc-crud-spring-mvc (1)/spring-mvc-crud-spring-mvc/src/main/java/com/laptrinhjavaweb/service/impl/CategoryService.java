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
import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.entity.NewEntity;
import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.INewService;

@Service
public class CategoryService implements ICategoryService {
	
	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private INewService newsv;
	@Autowired
	private CategoryConverter cv;
	
	@Override
	public Map<String, String> findAll() {
		Map<String, String> result = new HashMap<>();
		List<CategoryEntity> entities = categoryRepository.findAll();
		for (CategoryEntity item: entities) {
			result.put(item.getCode(), item.getName());
		}
		return result;
	}

	@Override
	public List<CategoryDTO> findAll(Pageable pageable) {
		List<CategoryDTO> models = new ArrayList<>();
		List<CategoryEntity> entities = categoryRepository.findAll(pageable).getContent();
		for (CategoryEntity item: entities) {
			CategoryDTO newDTO = cv.toDto(item);
			models.add(newDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) categoryRepository.count();
	}

	@Override
	public CategoryDTO findById(long id) {
		CategoryEntity entity = categoryRepository.findOne(id);
		return cv.toDto(entity);

	}

	@Override
	public CategoryDTO save(CategoryDTO dto) {
		CategoryEntity cate=new CategoryEntity();
		if (dto.getId() != null) {
			CategoryEntity oldNew = categoryRepository.findOne(dto.getId());
		    oldNew.setName(dto.getName());
		    oldNew.setCode(dto.getCode());
		    oldNew.setThumbnail(dto.getThumbnail());
			
			cate =oldNew;
		} else {
			cate = cv.toEntity(dto);
		
		}
		return cv.toDto(categoryRepository.save(cate));
	}

	@Override
	public void delete(long[] ids) {
		for (long id: ids) {
			categoryRepository.delete(id);
		}
		
	}

	@Override
	public List<CategoryDTO> findAll1() {
		List<CategoryDTO> models = new ArrayList<>();
		List<CategoryEntity> entities = categoryRepository.findAll();
		for (CategoryEntity item: entities) {
			CategoryDTO newDTO = cv.toDto(item);
			newDTO.setSoluongsp(newsv.findAll1(item.getId()).size());
			models.add(newDTO);
		}
		return models;
	}
}
