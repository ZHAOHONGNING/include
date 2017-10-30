package com.zhao.service;


public interface AdminService {

	//管理员注册
	void register(com.zhao.eneity.Admin admin);

	/**
	 *管理员登陆
	 */
	com.zhao.eneity.Admin login(com.zhao.eneity.Admin admin);
}
