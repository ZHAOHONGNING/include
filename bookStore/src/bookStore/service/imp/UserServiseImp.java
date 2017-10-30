package bookStore.service.imp;

import java.sql.SQLException;

import bookStore.Dao.UserDao;
import bookStore.Dao.imp.UserDaoImp;
import bookStore.bean.User;
import bookStore.service.UserService;

public class UserServiseImp implements UserService {

	UserDao userdao = new UserDaoImp();
	@Override
	public User login(User user) {
		User user2 = userdao.checkUsenameandpassword(user);
		return user2;
	}

	@Override
	public boolean regist(User user) {
		boolean b = userdao.checkUsername(user);
		return b;
	}

	@Override
	public void saveUser(User user) throws SQLException {

		userdao.saveusername(user);
	}

}
