package com.shangxun.mapper;

import java.util.List;

import com.shangxun.model.People;

/**
 * People的mybatis的助�?
 * */
public interface PeopleMapper {
	List<People> findAllPeoples();
	 
}
