package com.zhao.dao.imp;

import java.util.List;

import org.hibernate.SessionFactory;

import com.zhao.dao.EmployeeDao;
import com.zhao.eneity.Employee;


public class EmployeeDaoImp extends BaseDaoImp<Employee>  implements EmployeeDao  {

	
	 /*记得将basedaoimp注入到employeedaoimp
	  * 
	  */
	 
	 //所有方法同baseDao相同
	

	@Override
	public List<Employee> getAll(String employeeName) {
		return getSessionFactory().getCurrentSession()//
				.createQuery("from Employee where empName like ?")//
				.setParameter(0, "%" +employeeName + "%")//
				.list();
	}

	@Override
	public void upDate(Employee employee) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Employee fingById(int id) {
		String hql = "from Employee e left join fetch e.dept where e.id=?";			
		return (Employee) getSessionFactory()
			.getCurrentSession()
			.createQuery(hql)
			.setParameter(0, id)
			.uniqueResult();
	}

	

	
	

}
