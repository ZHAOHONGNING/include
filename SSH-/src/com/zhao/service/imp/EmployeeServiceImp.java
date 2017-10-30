package com.zhao.service.imp;

import java.util.List;

import com.zhao.dao.EmployeeDao;
import com.zhao.eneity.Employee;
import com.zhao.service.EmployeeService;

public class EmployeeServiceImp implements EmployeeService {

	//注入容器
	private EmployeeDao employeeDao;
	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}
	@Override
	public void save(Employee emp) {
		employeeDao.save(emp);
		
	}

	@Override
	public void update(Employee emp) {

		employeeDao.upDate(emp);
	}

	@Override
	public Employee findById(int id) {
		return employeeDao.fingById(id);
	}

	@Override
	public List<Employee> getAll() {
		// TODO Auto-generated method stub
		return employeeDao.getAll();
	}

	@Override
	public List<Employee> getAll(String employeeName) {
		return employeeDao.getAll(employeeName);
	}
 
	//根据id指定删除员工
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		employeeDao.delete(id);
	}

	//删除多个id员工
	@Override
	public void deleteMany(int[] ids) {
		if(ids == null&& ids.length >0){
			for (int i : ids) {
				delete(i);
			}
		}
		
	}

}
