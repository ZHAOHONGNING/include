package com.zhao.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.hibernate.metamodel.relational.state.ValueRelationalState;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;
import com.sun.corba.se.spi.legacy.interceptor.RequestInfoExt;
import com.zhao.eneity.Dept;
import com.zhao.eneity.Employee;
import com.zhao.service.DeptService;
import com.zhao.service.EmployeeService;
import com.zhao.service.imp.DeptServiceImp;
import com.zhao.service.imp.EmployeeServiceImp;

public class EmployeeAction extends ActionSupport implements RequestAware, ModelDriven<Employee> {
	// 下拉列表的个数
	private int deptId;

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	// 模型驱动
	private Employee employee = new Employee();

	// get 方法
	public Employee getEmployee() {
		return employee;
	}

	// set方法
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	// 继承接口后实现的方法
	@Override
	public Employee getModel() {
		// TODO Auto-generated method stub
		return employee;
	}

	// 方便的实现了map中request对象
	private Map<String, Object> request;

	@Override
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request = request;
	}

	// 注入容器
	private EmployeeService emploueeService;
	private DeptService deptService;

	public void setDeptServiceImp(DeptServiceImp deptService) {
		this.deptService = deptService;
	}

	public void setEmploueeService(EmployeeService emploueeService) {
		this.emploueeService = emploueeService;
	}

	// 员工列表的展示
	public String list() {
		// 获取员工列表
		List<Employee> list = emploueeService.getAll();
		// 获取request
		//
		request.put("list", list);
		return SUCCESS;
	}

	// 添加员工的界面方法
	// 获取所有部门信息
	public String viewAdd() {

		List<Dept> listDept = deptService.getAll();
		request.put("listDept", listDept);
		return "add";
	}
	// 添加员工

	public String addEmployee() {
		// 根据部门主键查询
		Dept dept = deptService.findById(deptId);
		// 设置员工到对象中
		employee.setDept(dept);
		// 保存员工
		emploueeService.save(employee);
		return "listAction";
	}

	// 修改员工
	public String viewUpdate() {
		int id = employee.getId();
		Employee emp = emploueeService.findById(id);
		//查询所有部门
		List<Dept> listDept = deptService.getAll();
		//数据回显
		ValueStack vs = ActionContext.getContext().getValueStack();
        vs.pop();//一处栈顶元素
        vs.push(emp);//压栈
        //保存
        request.put("listDept", listDept);
        return " edit";
	}
	public String upDate(){
		//根据部门id找到id
		int id = employee.getId();
		Dept dept = deptService.findById(id);
		//将员工和部门建立联系
		employee.setDept(dept);
		//执行update方法保存employee。因为模型驱动的原因需要保存他
		emploueeService.update(employee);
		
		return "listAction";
	}

	// 栓除员工
	public String delete() {
		//获取到员工主键来执行删除操作
		
		int employeeId = employee.getId();
		emploueeService.delete(employeeId);

		return "listAction";
	}

}
