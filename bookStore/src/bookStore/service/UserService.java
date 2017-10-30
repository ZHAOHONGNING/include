package bookStore.service;

import java.sql.SQLException;

import bookStore.bean.User;
//前端页面实现
public interface UserService {
	/*返回值是user，登陆成功
	 * 返回值是null，登陆失败
	 */
	public User login(User user);
	/*返回true注册成功
	 * false注册失败
	 */
	public boolean regist(User user);
	
	public void saveUser(User user) throws SQLException;
}
