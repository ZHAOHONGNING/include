package com.zhao.service;

import java.util.List;

import com.zhao.eneity.Dept;

public interface DeptService {

	//查询全部部门
	List<Dept> getAll();

	/**
	 根据ID查询部门
	 */
	Dept findById(int id);
}
