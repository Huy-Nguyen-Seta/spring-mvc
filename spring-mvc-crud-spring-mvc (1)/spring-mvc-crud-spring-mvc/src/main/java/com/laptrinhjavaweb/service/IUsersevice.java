package com.laptrinhjavaweb.service;


import java.util.List;

import com.laptrinhjavaweb.dto.UserDTO;

public interface IUsersevice {
  List<String> TestUser();
  void save(UserDTO user);
}
