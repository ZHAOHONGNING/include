package com.zhao.dao;

import java.util.List;

public interface BaseDao<T> {
       // 保存一个对象
	void save(T emp);

	/**
	 通用的更新操作
	 */
	void update(T emp);

	/**
	 删除一个对象
	 */
	void delete(int id);

	/**
	 *查询所有id对象
	 */
	T findById(int id);

	/**
	 *查询所有对象
	 */
	List<T> getAll();
}
