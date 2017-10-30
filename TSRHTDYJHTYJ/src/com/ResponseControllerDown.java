package com;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResponseControllerDown {

	@RequestMapping("/down")
	public ResponseEntity<byte[]> downLoad(HttpSession session) throws IOException{
		//servletcontext其中的方法可以获取文件的路径
		ServletContext context = session.getServletContext();
		InputStream stream = context.getResourceAsStream("/scripts/jquery-1.9.1.min.js");
		//目的是将这个流一字节的形式传送出去
		//stream.available()方法是获取这个字节流的字节数
		//保存字节
		byte[] temp = new byte[stream.available()];
		//将流中的数据保存在temp中
		stream.read(temp);
		stream.close();
		//要让浏览器下载必须设置一个响应头
        HttpHeaders headers = new HttpHeaders();
		//2.2)、解决中文文件名乱码
		String fileName="图的片.js";
		fileName = new String(fileName.getBytes("GBK"), "ISO8859-1");
		
		headers.add("Content-Disposition", "attachment; filename="+fileName);
		ResponseEntity<byte[]> entity = new ResponseEntity<>(temp, headers, HttpStatus.OK);
		return entity;
		
	}

}
