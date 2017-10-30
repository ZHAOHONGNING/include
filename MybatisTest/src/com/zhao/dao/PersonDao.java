package com.zhao.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.zhao.bean.Person;

public interface PersonDao {

	/*
	 * 检索
	 * 不用像标签体那样的写参数和返回值那样
	 */
	@Select("select * from t_person where id = #{id}")
	public Person getPerson(@Param("id")Integer id);
	/*
	 * 删除
	 */
	@Delete("delete from t_person where id = #{id}")
	public void delete(Integer id);
	/*
	 * 增加
	 */
	@Insert("insert into t_person where(id,name,age)values(#{id},#{name},#{age})")
	public void insert(Person person);
	/*
	 * 修改
	 */
	@Update("update t_person set name = #{name}"
			+ "id = #{id},age=#{age}")
	public void update(Person person);
}
