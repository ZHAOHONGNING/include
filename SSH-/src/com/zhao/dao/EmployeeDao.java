package com.zhao.dao;

import java.util.List;

import com.zhao.eneity.Employee;

public interface EmployeeDao {
	//保存用户
	void save(Employee employee);

	//用户的更新操作
	void upDate(Employee employee);
	
	//根据id删除用户
	void delete(int id);
	
	//根据用户id查到用户
	Employee fingById(int id);
	
	//获取所有用户
	List<Employee>getAll();
	
	//根据名字获取所有用户
	List<Employee> getAll(String EmployeeName);
}
