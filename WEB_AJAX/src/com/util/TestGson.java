package com.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;

import com.bean.Student;
import com.google.gson.Gson;

public class TestGson {

	@Test
	public void test() {
		Student student = new Student(12, "haha");
		// 创建gson对象
		Gson gson = new Gson();
		String json = gson.toJson(student);
		System.out.println(json);
		// 字符串转换成对象
		Student fromJson = gson.fromJson(json, Student.class);
		System.out.println(fromJson);

	}

	@Test
	public void test2() {
           List<Student>list = new ArrayList<>();
           list.add( new Student(12, "haha"));
           list.add( new Student(12, "hehe"));
           list.add( new Student(12, "qinima"));
           Gson gson = new Gson();
           String json = gson.toJson(list);
           System.out.println(json);
            List fromJson = gson.fromJson(json, List.class);
           System.out.println(fromJson);
	}
	@Test
	public void test3(){
		Map<Integer, Student>map = new HashMap<>();
		map.put(1, new Student(12, "haha"));
		map.put(2, new Student(15, "haa"));
		map.put(3, new Student(18, "hha"));
		map.put(7, new Student(19, "hha"));
		Gson gson = new Gson();
		String json = gson.toJson(map);
		System.out.println(json);
		Map fromJson = gson.fromJson(json, Map.class);
		System.out.println(fromJson);
	}
}
