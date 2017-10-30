package com.zhao.dao;

import java.util.List;

import com.zhao.eneity.Dept;

public interface DeptDao {
	
	//部门模块,获取所有部门
	List<Dept> getAll();
	
	//根据ID获取部门查询
	Dept findById(int id);
	
	
	

}
