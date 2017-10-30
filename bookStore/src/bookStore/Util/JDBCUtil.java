package bookStore.Util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JDBCUtil {
	public static DataSource datasource = new ComboPooledDataSource();
	
	public static Connection getconnection() throws SQLException{
		
		Connection connection = datasource.getConnection();
		return connection;
	}
	//realease释放的意思
	public static  void releaseConnection(Connection connection){
		if(connection!=null){
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
