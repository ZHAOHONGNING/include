package bookStore.Dao.imp;

import java.sql.SQLException;

import bookStore.Dao.UserDao;
import bookStore.bean.User;

public class UserDaoImp extends BaseDao<User>implements UserDao {
//从userdao开始就是业务逻辑层
	//UserDaoImp负责实现UserDao并且继承了basedao的方法
	//业务逻辑层就开始执行sql语句
	@Override
	public User checkUsenameandpassword(User user)  {
		String sql = "select id,username,password,email from users where username = ? and password = ?";
		User bean = getBean(sql, user.getUsername(),user.getPassword());
		return bean;
	}

	@Override
	public boolean checkUsername(User user) {
		String sql = "select id,username,password,email from users where username = ? ";
		User bean = getBean(sql, user.getUsername());
		return bean == null;
	}

	@Override
	public void saveusername(User user) throws SQLException {
		String sql = "insert into users (username,password,email)values (?,?,?)";

		int i = update(sql, user.getUsername(),user.getPassword(),user.getEmail());
		System.out.println(i);
		
	}

}
