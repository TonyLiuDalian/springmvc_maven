package com.shangxun.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shangxun.mapper.PeopleMapper;
import com.shangxun.model.People;
import com.shangxun.service.PeopleService;

/**
 * People服务类的实现�?
 * */
@Service("peopleService")
public class PeopleServiceImpl implements PeopleService {

	// dao层对象（由spring注入，mybatis接手后调用对应的xml文件
	PeopleMapper peopleMapper;

	//
	@Override
	public List<People> findAll() {
		List<People> list = peopleMapper.findAllPeoples();
		return list;
	}

	// getter setter
	public PeopleMapper getPeopleMapper() {
		return peopleMapper;
	}

	@Autowired
	public void setPeopleMapper(PeopleMapper peopleMapper) {
		this.peopleMapper = peopleMapper;
	}

}
