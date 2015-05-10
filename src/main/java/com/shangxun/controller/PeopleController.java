package com.shangxun.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shangxun.model.People;
import com.shangxun.service.PeopleService;

/**
 * 用户信息查询controller
 * */
@Controller
public class PeopleController {

	// 在控制成注入服务层的对象
	PeopleService peopleService;

	@RequestMapping("findAllPeoples")
	public ModelAndView findAll() {
		List<People> list = peopleService.findAll();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("peoples", list);
		return new ModelAndView("listPeople", resultMap);
	}

	//
	public PeopleService getPeopleService() {
		return peopleService;
	}

	@Autowired
	// spring自动注入服务层的实现
	public void setPeopleService(PeopleService peopleService) {
		this.peopleService = peopleService;
	}

}
