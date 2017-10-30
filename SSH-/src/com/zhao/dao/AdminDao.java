package com.zhao.dao;

import com.zhao.eneity.Admin;

public interface AdminDao {
	//保存管理员
	void register(Admin admin);
	//根据管理员找管理员
	Admin login(Admin admin);
		
	
	

}
