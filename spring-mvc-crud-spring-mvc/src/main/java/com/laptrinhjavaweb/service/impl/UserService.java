package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.RoleEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.UserRepository;
import com.laptrinhjavaweb.service.IUsersevice;
@Service
public class UserService implements IUsersevice {

	@Autowired
	private UserRepository userrp;
	@Override
	public List<String> TestUser() {
		
		List<UserEntity> userentity =new ArrayList<>();
		List<String> userdto=new ArrayList<>();
		userentity=userrp.findAll();
		for (UserEntity userEntity2 : userentity) {
			
			userdto.add(userEntity2.getUserName());
			
		}
		return userdto;
	}
	@Override
	@Transactional
	public void save(UserDTO user) {
		UserEntity entity=new UserEntity();
		RoleEntity role=new RoleEntity();
		entity.setUserName(user.getUsername());
		entity.setPassword(user.getPassword());
		entity.setDiachi(user.getDiachi());
		entity.setSdt(user.getSdt());
		entity.setGmail(user.getGmail());
		entity.setFullName(user.getFullName());
		entity.setStatus(1);
		role.setCode("USER");
		userrp.save(entity);
		
		
	}
	@Override
	public long finbyusername(String u) {
		List<UserEntity> user=userrp.findAll();
		
		for (UserEntity userEntity : user) {
		
			if(userEntity.getUserName().equals(u)) {
				
				return userEntity.getId();
			}
		}
		return 0;
	}
	@Override
	public UserDTO findbyid(long id) {
		UserDTO dto=new UserDTO();
		List<UserEntity> entity=userrp.findAll();
		for (UserEntity userEntity : entity) {
			if(userEntity.getId()==id) {
			dto.setId(userEntity.getId());
			dto.setFullName(userEntity.getFullName());
			dto.setDiachi(userEntity.getDiachi());
			dto.setGmail(userEntity.getGmail());
			dto.setSdt(userEntity.getSdt());
			return dto;
			
			
				
			}
		}
		return null;
	}
	

}
