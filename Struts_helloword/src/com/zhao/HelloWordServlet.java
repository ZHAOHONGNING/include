package com.zhao;

import com.opensymphony.xwork2.ActionSupport;

public class HelloWordServlet extends ActionSupport {
	private int age;
	public void setAge(int age){
		this.age = age;
	}
       
		public String get(){
        	System.out.println("efgewrg");
        	System.out.println("我的年龄是"+age);
        	return SUCCESS;
        }
}
