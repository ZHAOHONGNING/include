package com.zhao.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.Action;
import com.zhao.bean.Book;
import com.zhao.dao.BookDao;

public class BookAction implements RequestAware {
	// 查询所有图书
	BookDao book = new BookDao();
	private Map<String, Object> request;

	public String queryAll() {
		List<Book> querylist = book.querylist();
		request.put("booklist", querylist);
		return "success";
	}

	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		request = arg0;
	}

	/*
	 * 删除图书
	 */
	public String remove() {

		Integer id = null;
		book.delete(id);
		return "success";
	}

	/*
	 * 更新图书
	 */
	public String update() {
		Book b = null;
		book.update(b);
		return "success";
	}

	/*
	 * 保存图书
	 */
	private String name;
	private String author;
	private double price;

	public String save() {
		Book b = new Book(0, name, author, price);
		book.save(b);
		return "list";
	}

}
