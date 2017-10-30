package com.zhao.util;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.atguigu.mapping.bean.Department;
import com.atguigu.mapping.bean.Employee;

public class Check {
	@Test
	public void test13() {
	}

	@Test
	public void test12() {
	}

	// 筛选出工资小于5000然后设置成5000（更新操作）
	@Test
	public void test11() {
		String hql = "update from Employee e set e.salary = ? where e.salary < ?";
		int i = session.createQuery(hql).setInteger(0, 6000).setInteger(1, 10000).executeUpdate();
           System.out.println(i);
	}

	@Test
	public void test10() {
	}

	// 用hql执行删除语句有一点注意。执行完createQuery（）是执行excuteUpdate（）
	// 不是list（）；
	@Test
	public void test9() {
		String hql = "delete from Employee e where e.empId = ?";
		int update = session.createQuery(hql).setInteger(0, 1).executeUpdate();
		System.out.println(update);
	}

	@Test
	public void test8() {
		String hql = " select distinct d from Department d inner join fetch d.empSet";
		List<Department> list = session.createQuery(hql).list();
		for (Department object : list) {
			System.out.println(object.getDeptName() + "哈哈哈哈" + object.getEmpSet());
		}
	}

	// 使用坐外迫切(left join fetch)连接将department和employee表连接起来并去重
	// distinct不同的意思
	@Test
	public void test7() {
		String hql = " select distinct d from Department d left join fetch d.empSet";
		List list = session.createQuery(hql).list();
		for (Object object : list) {
			System.out.println(object);
		}
	}

	@Test
	public void test6() {
		// 利用hbm。xml文件配置查询
		List list = session.getNamedQuery("selectAll").setParameter(0, 3000.0).list();
		for (Object object : list) {
			System.out.println(object);
		}

	}

	@Test
	public void test5() {
		// 分页查询调用setFirstResult和setMaxResult方法
		List<Employee> list = session.createQuery("from Employee").setFirstResult(0).setMaxResults(2).list();

		for (Employee employee : list) {
			System.out.println(employee);
		}

	}

	@Test
	public void test4() {
		/*
		 * 采用实体类查询 HQL语句的查询功能 通过实体类创建对象然后调用set方法 赋值
		 */
		Department dep = new Department();
		dep.setDeptId(1);
		List list = session.createQuery("from Employee e where e.department = ?").setParameter(0, dep)
				// 将得到的结果以集合列表显示出来
				.list();
		// 遍历集合
		for (Object object : list) {
			System.out.println(object);
		}
	}

	@Test
	public void test3() {
		// 使用命名参数查询,记住参数一点要加：
		// HQL语句的查询功能
		Query query = session.createQuery("from Employee e where e.salary > :salarymax");
		query.setParameter("salarymax", 5000.0);
		// 将得到的结果以集合列表显示出来
		List<Employee> list = query.list();
		// 遍历集合
		for (Employee employee : list) {
			System.out.println(employee);
		}
	}

	@Test
	public void test2() {
		// 用占位符代替实际数据
		// 调用setDouble（）方法代替数据
		// HQL语句的查询功能
		Query query = session.createQuery("from Employee e where e.salary >?");
		query.setDouble(0, 5000);
		// 将得到的结果以集合列表显示出来
		List<Employee> list = query.list();
		// 遍历集合
		for (Employee employee : list) {
			System.out.println(employee);
		}
	}

	@Test
	public void test1() {
		// HQL语句的查询功能
		Query query = session.createQuery("from Employee e where e.salary >5000");
		// 将得到的结果以集合列表显示出来
		List<Employee> list = query.list();
		// 遍历集合
		for (Employee employee : list) {
			System.out.println(employee);
		}

	}

	SessionFactory sessionfactory;
	Session session;
	Transaction tx;

	@Before
	public void setup() {
		// 加载默认文件配置
		Configuration cfg = new Configuration();
		cfg.configure();
		ServiceRegistryBuilder srb = new ServiceRegistryBuilder();
		srb.applySettings(cfg.getProperties());
		ServiceRegistry sr = srb.buildServiceRegistry();
		sessionfactory = cfg.buildSessionFactory(sr);
		session = sessionfactory.openSession();
		tx = session.beginTransaction();
	}

	@After
	public void tearDown() {
		tx.commit();
		session.close();
		sessionfactory.close();
	}

}
