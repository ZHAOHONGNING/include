package com.zhao;

import com.opensymphony.xwork2.ActionSupport;

public class HelloWordServlet extends ActionSupport {
	public String getHello(){
		System.out.println("qunimade");
		return "success";
	}

}
