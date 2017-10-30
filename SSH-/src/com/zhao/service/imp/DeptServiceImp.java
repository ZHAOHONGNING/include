package com.zhao.service.imp;

import java.util.List;

import com.zhao.dao.DeptDao;
import com.zhao.eneity.Dept;
import com.zhao.service.DeptService;

public class DeptServiceImp implements DeptService {
     //容器注入
	private DeptDao deptDao;
	private void setdepatdao() {
		// TODO Auto-generated method stub

	}
	@Override
	public List<Dept> getAll() {
		return deptDao.getAll();
	}

	@Override
	public Dept findById(int id) {
		// TODO Auto-generated method stub
		return deptDao.findById(id);
	}

}
