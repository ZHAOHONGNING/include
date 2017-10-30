package com;

import java.util.ArrayList;
import java.util.List;

public class Person {
	private Integer id;
	private String name;
	private Integer age;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", age=" + age + "]";
	}
	public Person(Integer id, String name, Integer age) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
	}
	public Person() {
		super();
	}
	public static void main(String[] args) {
		List<Person> person = new ArrayList<Person>();
	     person.add(new Person(45, "dsfds", 78));
	     person.add(new Person(45, "dsfds", 78));
	     person.add(new Person(45, "dsfds", 78));
	}
	
	
}
