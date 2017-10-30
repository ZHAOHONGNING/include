package com.zhao.eneity;



public class Employee {

	private int id;
	private String empName;
	private double salary;
	private Dept dept;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public Dept getDept() {
		return dept;
	}
	public void setDept(Dept dept) {
		this.dept = dept;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", empName=" + empName + ", salary=" + salary + "]";
	}
	public Employee(int id, String empName, double salary) {
		super();
		this.id = id;
		this.empName = empName;
		this.salary = salary;
	}
	public Employee() {
		super();
	}
	
}
