package com.zhao.cn;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookAction {
	@RequestMapping(value = "/book/{abc}" ,method = RequestMethod.POST)
	public String POSTmethod(@PathVariable("abc")Integer id){
		System.out.println("添加"+id);
		
		return "/success.jsp";
	}
	@RequestMapping(value = "/book/{abc}" ,method = RequestMethod.PUT)
	public String PUTmethod(@PathVariable("abc")Integer id){
		System.out.println("更新"+id);
		
		return "/success.jsp";
	}
	@RequestMapping(value = "/book/{abc}" ,method = RequestMethod.DELETE)
	public String DELETEmethod(@PathVariable("abc")Integer id){
		System.out.println("删除"+id);
		
		return "/success.jsp";
	}
	@RequestMapping(value = "/book/{abc}" ,method = RequestMethod.GET)
	public String GETmethod(@PathVariable("abc")Integer id){
		System.out.println("搜索"+id);
		
		return "/success.jsp";
	}

}
