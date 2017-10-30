package com;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

public class App {

	@Test
	public void test() {
		List<Person> person = new ArrayList<Person>();
	     person.add(new Person(45, "dsfds", 78));
	     person.add(new Person(45, "dsfds", 78));
	     person.add(new Person(45, "dsfds", 78));
		System.out.println(person);
	}

}
