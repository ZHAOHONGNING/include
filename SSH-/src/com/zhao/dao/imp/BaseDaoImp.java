package com.zhao.dao.imp;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.engine.spi.ExecuteUpdateResultCheckStyle;

import com.zhao.dao.BaseDao;

public class BaseDaoImp<T> implements BaseDao<T> {
	//当前操作的实际bean类型
	private Class<T >clazz;
	private String className;
	//反射泛型。目的是了解其在被继承后使用
	//的到底是什么类型
	public BaseDaoImp() {
		Type type = this.getClass().getGenericSuperclass();
		//转换为参数化类型,他的效果相当于
		//从BaseDaoImp<T> = >BaseDaoImp<Employee>
		ParameterizedType pt = (ParameterizedType) type;
		//得到实际类型
		Type types[] = pt.getActualTypeArguments();
		//获取实际类型(就是类的实际对象)
		clazz = (Class<T>) types[0];
		//获取类名
		className = clazz.getSimpleName();
	}
	//注入sessionFactory
	 private SessionFactory sessionFactory;
	 public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	 public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
     
	@Override
	public void save(T emp) {
		sessionFactory.getCurrentSession().save(emp);
		
	}

	@Override
	public void update(T emp) {
		sessionFactory.getCurrentSession().update(emp);
		
		
	}

	@Override
	public void delete(int id) {
		sessionFactory.getCurrentSession()
		             .createQuery("from "+className+"where id = ?")
		             .setParameter(0, id).executeUpdate();
	}

	@Override
	public T findById(int id) {
		
		return (T) sessionFactory.getCurrentSession()
				                 .get(clazz, id);
	}

	@Override
	public List<T> getAll() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession()
	             .createQuery("from "+className)
	             .list();
	
	
	}


}