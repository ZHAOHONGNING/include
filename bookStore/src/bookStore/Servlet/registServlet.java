package bookStore.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookStore.bean.User;
import bookStore.service.UserService;
import bookStore.service.imp.UserServiseImp;

/**
 * Servlet implementation class registServlet
 */
public class registServlet extends HttpServlet {
	private UserService userservice = new UserServiseImp();
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		User user = new User(null, password, username, email);
		boolean b = userservice.regist(user);
		if(b){
			//返回值是true，利用重定向技术
			response.sendRedirect("");
		}else{
			//返回值是false转发
			request.getRequestDispatcher("").forward(request, response);
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
