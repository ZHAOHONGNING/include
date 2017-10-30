package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Student;

/**
 * Servlet implementation class AjaxServlet
 */
public class AjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    System.out.println("马上过年");
		//由服务器给浏览器一个响应
	    String id = request.getParameter("id");
	    String name = request.getParameter("name");
	    //封装Student对象
	    Student student = new Student(45, name);
	    System.out.println(student);
	    response.getWriter().write("过年好");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	//给post请求一个响应
		response.getWriter().write("I LOVE YOU");
	}

}
