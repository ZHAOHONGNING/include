package bookStore.testjdbc;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;

import bookStore.Util.JDBCUtil;

public class Test {

	@org.junit.Test
	public void test() throws SQLException {
		Connection connection = JDBCUtil.getconnection();
		System.out.println(connection);
		JDBCUtil.releaseConnection(connection);
	}

}
