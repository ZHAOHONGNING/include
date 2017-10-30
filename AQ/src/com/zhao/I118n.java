package com.zhao;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class I118n {

	@RequestMapping("login")
	public String test(Locale locale,
	@RequestParam(value="local",required=false,defaultValue="zh_CN")String local){
		
		return "login.jsp";
	}
}
