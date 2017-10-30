package bookStore.Dao;

import java.sql.SQLException;

import bookStore.bean.User;
//体现的是先接口后编程实现
public interface UserDao {
	//从数据库获取信息然后保证用户登录
	public User checkUsenameandpassword(User user);
	//利用布尔类型查看是否登陆重复
	public boolean checkUsername(User user);
	//用户注册
	public void saveusername(User user) throws SQLException;
	

}
