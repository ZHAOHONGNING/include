package com.zhao.dao.imp;

import org.hibernate.SessionFactory;

import com.zhao.dao.AdminDao;
import com.zhao.eneity.Admin;

public class AdminDaoImp  implements AdminDao {
	 private SessionFactory sessionFactory;
	 public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void register(Admin admin) {
		sessionFactory.getCurrentSession().save(admin);
		
	}

	@Override
	public Admin login(Admin admin) {
		return (Admin) sessionFactory.getCurrentSession()
				.createQuery("from Admin adminName = ?and pwd").
				setString(0, admin.getAdminName()).
				setString(1, admin.getPwd()).list();
	}

}
