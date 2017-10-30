package zhao.service;

import org.springframework.stereotype.Service;

import zhao.dao.bookDao;

@Service
public class bookService {
	private bookDao bookdao;

	public bookDao getBookdao() {
		return bookdao;
	}

	public void setBookdao(bookDao bookdao) {
		this.bookdao = bookdao;
	}
	

}
