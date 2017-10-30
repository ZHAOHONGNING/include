package com.zhao.dao.imp;

import java.util.List;

import org.hibernate.SessionFactory;

import com.zhao.dao.DeptDao;
import com.zhao.eneity.Dept;

public class DeptDaoImp implements DeptDao {

	
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List<Dept> getAll() {
		return (List<Dept>) sessionFactory.getCurrentSession()
				       .createQuery("from * from Dept").list();
	}

	@Override
	public Dept findById(int id) {
		
		return (Dept) sessionFactory.getCurrentSession()
				.get(Dept.class, id);
	}

}
