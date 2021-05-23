package com.laptrinhjavaweb.controller.admin;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.dealDTO;

import com.laptrinhjavaweb.service.Idealservice;


@Controller(value = "donedealControllerOfAdmin")
public class DoneDealController2 {
	@Autowired 
	private Idealservice deal;

	
	
	@RequestMapping(value = "/quan-tri/donedeal", method = RequestMethod.GET)
	public ModelAndView homePage(@RequestParam("page") int page, 
			 @RequestParam("limit") int limit, HttpServletRequest request) {
		
	
		dealDTO model = new dealDTO();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("admin/deal/dealdone");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(deal.findAll(pageable,1));
	
		model.setTotalItem(deal.getTotalItem(1));
		System.out.println("total"+ model.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		
	
		mav.addObject("model", model);
		
	
		return mav;
	}
}
