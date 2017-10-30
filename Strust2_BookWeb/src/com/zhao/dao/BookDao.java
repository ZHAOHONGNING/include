package com.zhao.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.zhao.bean.Book;

public class BookDao {
	private static Map<Integer, Book> map = new HashMap<>();
	//这就相当于数据库
	static{
		map.put(12, new Book(12, "aa", "aa", 54));
		map.put(252, new Book(252, "aa", "aa", 54));
		map.put(18, new Book(18, "aa", "aa", 54));
		map.put(42, new Book(42, "aa", "aa", 54));
		map.put(522, new Book(522, "aa", "aa", 54));
		map.put(5582, new Book(522, "aa", "aa", 54));
		map.put(5582, new Book(522, "aa", "aa", 54));
		map.put(722, new Book(522, "aa", "aa", 54));
		map.put(2, new Book(522, "aa", "aa", 54));
		map.put(7, new Book(522, "aa", "aa", 54));
		map.put(52, new Book(522, "aa", "aa", 54));
		map.put(56782, new Book(522, "aa", "aa", 54));
		map.put(522722, new Book(522, "aa", "aa", 54));
		map.put(5578222, new Book(522, "aa", "aa", 54));
	}

	//所有图书的查询
	public List<Book> querylist(){
		Collection<Book> collection = map.values();
		return new ArrayList<>(collection);
	}
	//图书的添加
	public void save(Book book){
		Integer bookId = (int) System.currentTimeMillis();
		book.setId(bookId);
		map.put(bookId, book);
	}
	//图书的的删除
	public void delete(Integer id){
		map.remove(id);
	}
	//根据id查询图书
	public Book getId(Integer id){
		Book book = map.get(id);
		return book;
	}
	//图书的更新
	public void update(Book book){
		map.put(book.getId(), book);
	}
}
