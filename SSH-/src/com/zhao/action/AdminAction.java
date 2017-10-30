package com.zhao.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ModelDriven;
import com.zhao.dao.imp.AdminDaoImp;
import com.zhao.dao.imp.BaseDaoImp;
import com.zhao.eneity.Admin;
import com.zhao.eneity.Employee;

public class AdminAction extends BaseDaoImp<Admin> implements SessionAware, RequestAware, ModelDriven<Admin> {
	Admin admin = new Admin();

	@Override
	public Admin getModel() {
		// TODO Auto-generated method stub
		return admin;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub

	}

	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

	/*
	 * 管理员的登陆注册
	 */
	// adminDaoImp的注入
	private AdminDaoImp adminDaoImp;

	public void setAdminDaoImp(AdminDaoImp adminDaoImp) {
		this.adminDaoImp = adminDaoImp;
	}

	public String login(){
		Admin adminInfo = adminDaoImp.login(admin);
		if(adminInfo == null){
			
			return "listFaild";
		}else {
			session.put("adminInfo",adminInfo );
			return "index";
		}
		
	}

}
