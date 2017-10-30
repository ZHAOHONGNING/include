package com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ExceHandler {

	@RequestMapping("/ex")
	public String handler(@RequestParam("id")Integer id){
		
		System.out.println(100/id);
		return "success.jsp";
	}
	/*
	 * 这是处理异常的方法在
	 * 该类中出现的异常都交给
	 * 这个方法处理
	 */
	@ExceptionHandler(value={Exception.class})
	public String ExHandler(){
		
		return "error.jsp";
	}
}
