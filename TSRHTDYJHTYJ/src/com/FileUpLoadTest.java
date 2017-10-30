package com;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
@Controller
public class FileUpLoadTest {
	
	
	@RequestMapping("/up")
	public String upload(String desc,MultipartFile file) throws IllegalStateException, 
	                                                  IOException{
		file.transferTo(new File("D://zhao"));
		System.out.println(desc);
		return "success";
	}

}
