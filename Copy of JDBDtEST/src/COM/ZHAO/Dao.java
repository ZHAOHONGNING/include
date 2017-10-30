package COM.ZHAO;

import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.SQLException;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class Dao {

	public static Connection getConnection()  {
		ComboPooledDataSource datasource = new ComboPooledDataSource();
		
		Connection connection = null;
		datasource.setUser("root");
		datasource.setPassword("74110");
		try {
			datasource.setDriverClass("com.mysql.jdbc.Driver");
		} catch (PropertyVetoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		datasource.setJdbcUrl("jdbc:mysql://127.0.0.1:3306/bookstore");
		datasource.setInitialPoolSize(4);
		datasource.setMaxPoolSize(42);
		try {
			 connection = datasource.getConnection();
			 return connection;
		} 
		
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
