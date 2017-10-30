package com.zhao.service;

import java.util.List;

import com.zhao.eneity.Employee;

public interface EmployeeService {

	/**
	 
	 */
	void save(Employee emp);

	/**
	 
	 */
	void update(Employee emp);


	/**
	
	 */
	Employee findById(int id);

	/**
	
	 */
	List<Employee> getAll();

	/**
	 
	 */
	List<Employee> getAll(String employeeName);
	
	/**
	 
	 */
	void delete(int id);
	
	/**
	
	 */
	void deleteMany(int[] ids);

}
