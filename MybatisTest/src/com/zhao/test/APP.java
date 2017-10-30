package com.zhao.test;

import static org.junit.Assert.*;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.zhao.bean.Person;
import com.zhao.dao.PersonDao;

public class APP {
	static SqlSession  session = null;
	@Test
	public void test2(){
		PersonDao dao = session.getMapper(PersonDao.class);
		Person person 
		 = dao.getPerson(1);
		System.out.println(person);
	}
	@Before
	public void test() throws IOException {
		InputStream stream = Resources.getResourceAsStream("mybatis.xml");
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(stream);
		 session = sessionFactory.openSession();
		
		
	}

	@After
	public void test1(){
		session.commit();
		session.close();
	}
}
