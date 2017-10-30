package COM.ZHAO;

import COM.ZHAO.*;
import java.io.IOException;
import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Commonutil {

	public static <T> List<T> query(Connection connection, String sql, Class<T> clazz,
														Object... values) throws ClassNotFoundException, IOException,
														SQLException, InstantiationException, IllegalAccessException,
														NoSuchFieldException, SecurityException {
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			for (int i = 0; i < values.length; i++) {
				preparedStatement.setObject(i + 1, values[i]);
			}
			resultSet = preparedStatement.executeQuery();
			// 获取虚表表结构
			ResultSetMetaData metaData = resultSet.getMetaData();
			int cols = metaData.getColumnCount(); // 获取列数
			List<T> list = new ArrayList<T>();
			while (resultSet.next()) {
				T t = clazz.newInstance(); // 先创建一个空对象.
				for (int i = 0; i < cols; i++) { // 通过循环获取列对应的值,并给对象对应的属性赋值.
					String label = metaData.getColumnLabel(i + 1); // 先获取列名,列名同时和属性名相同
					Object value = resultSet.getObject(label); // 通过列名获取列名对应的值
					if (value != null) {
						Field field = clazz.getDeclaredField(label); // 列名同时和属性名相同,所以根据列名获取类的属性定义对象
						field.setAccessible(true);
						field.set(t, value);
					}
				}
				list.add(t);
			}
			return list;
		} finally {
		}
	}

	public static <T> List<T> query(String sql, Class<T> clazz,	Object... values) throws Exception {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			connection = Dao.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			for (int i = 0; i < values.length; i++) {
				preparedStatement.setObject(i + 1, values[i]);
			}
			resultSet = preparedStatement.executeQuery();
			// 获取虚表表结构
			ResultSetMetaData metaData = resultSet.getMetaData();
			int cols = metaData.getColumnCount(); // 获取列数
			List<T> list = new ArrayList<T>();
			while (resultSet.next()) {
				T t = clazz.newInstance(); // 先创建一个空对象.
				for (int i = 0; i < cols; i++) { // 通过循环获取列对应的值,并给对象对应的属性赋值.
					String label = metaData.getColumnLabel(i + 1); // 先获取列名,列名同时和属性名相同
					Object value = resultSet.getObject(label); // 通过列名获取列名对应的值
					if (value != null) {
						Field field = clazz.getDeclaredField(label); // 列名同时和属性名相同, 所以根据列名获取类的属性定义对象
						field.setAccessible(true);
						field.set(t, value);
					}
				}
				list.add(t);
			}
			return list;
		} 
		
		finally {
			System.out.println("hello");
		}
	}

	public static int update(Connection connection, String sql, Object... value)
			throws ClassNotFoundException, IOException, SQLException {
		PreparedStatement preparedStatement = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			for (int i = 0; i < value.length; i++) {
				preparedStatement.setObject(i + 1, value[i]);
			}
			return preparedStatement.executeUpdate();
		} finally {
		}
	}

	public static int update(String sql, Object... value)throws Exception {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			connection = Dao.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			for (int i = 0; i < value.length; i++) {
				preparedStatement.setObject(i + 1, value[i]);
			}
			return preparedStatement.executeUpdate();
		} finally {
		}
	}
}
