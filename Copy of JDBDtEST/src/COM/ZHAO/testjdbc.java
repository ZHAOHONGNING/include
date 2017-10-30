package COM.ZHAO;

import static org.junit.Assert.*;

import java.sql.Connection;

import org.junit.Test;

public class testjdbc {

	@Test
	public void test() throws Exception {
		String sql = "insert into users (name,salary,dept)values (?,?,?)";
	APP app = new APP();
	Object []args = {"aa",234,"bb"};
	app.row(sql, args);
		Connection connection = Dao.getConnection();
		System.out.println(connection);
	}

}
