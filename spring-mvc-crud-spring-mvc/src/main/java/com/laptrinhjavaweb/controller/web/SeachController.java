package com.laptrinhjavaweb.controller.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.laptrinhjavaweb.dto.NewDTO;

import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.INewService;


@Controller(value = "SeachControllerOfWeb")
public class SeachController {

@Autowired
private INewService catesevice;

@Autowired
private ICategoryService catesevice1;
	
	@RequestMapping(value = "/seach", method = RequestMethod.GET)
	public ModelAndView homePage(@RequestParam("cate") String cate,@RequestParam("news") String news, HttpServletRequest request) {
		NewDTO model = new NewDTO();
		
		ModelAndView mav = new ModelAndView("web/seach");
	
		model.setListResult(catesevice.findbycateandnew(cate, news));
	

		
		mav.addObject("model", model);
		mav.addObject("list", catesevice1.findAll1());
		return mav;
	
	}
	

}
