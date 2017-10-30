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
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet {
	//数据访问层，从数据库获取数据
	//需要和从前段传过来的数据比对
	private UserService userservice = new UserServiseImp();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = new User(null, password, username, null);
		User login = userservice.login(user);
		if(login!=null){
			response.sendRedirect(request.getContextPath()+"/pags/users");
		}else{
			request.getRequestDispatcher("").forward(request, response);
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
