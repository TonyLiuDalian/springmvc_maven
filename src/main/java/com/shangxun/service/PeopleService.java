package com.shangxun.service;

import java.util.List;

import com.shangxun.model.People;

/**
 * 用户信息查询服务接口�?
 * */
public interface PeopleService {
	List<People> findAll();
}
