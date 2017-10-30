package com.zhao.service.imp;

import com.zhao.dao.AdminDao;
import com.zhao.eneity.Admin;
import com.zhao.service.AdminService;

public class AdminServiceImp implements AdminService {

	//容器注入
	private AdminDao adminDao;
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	@Override
	public void register(Admin admin) {
		// TODO Auto-generated method stub
		adminDao.register(admin);
	}

	@Override
	public Admin login(Admin admin) {
		// TODO Auto-generated method stub
		return adminDao.login(admin);
	}

}
