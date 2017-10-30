package COM.ZHAO.test;

import static org.junit.Assert.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import COM.ZHAO.BEAN.Lock;
import COM.ZHAO.DAO.LockDao;



public class APP {
	static SqlSession  session = null; 
	@Test
	public void test2(){
		
		LockDao dao = session.getMapper(LockDao.class);
		Lock lock = dao.getLockById(3);
		System.out.println(lock);
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
