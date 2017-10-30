package COM.ZHAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class APP {

	public int row(String sql, Object... args) throws Exception {
	 Connection connection = Dao.getConnection();
		PreparedStatement prepareStatement = null;
		
			prepareStatement = connection.prepareStatement(sql);
			for (int i = 0; i < args.length; i++) {
				prepareStatement.setObject(i + 1, args[i]);

			}
			return prepareStatement.executeUpdate();
		
	}
}
