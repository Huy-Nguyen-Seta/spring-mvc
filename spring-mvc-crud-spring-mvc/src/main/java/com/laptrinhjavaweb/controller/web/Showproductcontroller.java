package com.laptrinhjavaweb.controller.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.INewService;
import com.laptrinhjavaweb.service.IUsersevice;
import com.laptrinhjavaweb.service.impl.UserService;
import com.laptrinhjavaweb.util.MessageUtil;

@Controller(value = "showpdControllerOfWeb")
public class Showproductcontroller {

@Autowired
private INewService newsv;

	
	@RequestMapping(value = "/trang-chu/ctsp", method = RequestMethod.GET)
	public ModelAndView homePage(@RequestParam("id") int id,@RequestParam("cate") int cateid, HttpServletRequest request) {
		NewDTO model = new NewDTO();
		
		ModelAndView mav = new ModelAndView("web/show");
		
		model=newsv.findById(id);
		
		model.setListResult(newsv.findAll(cateid));
		mav.addObject("model", model);
		mav.addObject("cate", cateid);
		return mav;
	
	}
	

}
