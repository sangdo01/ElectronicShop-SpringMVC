package ElectronicShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperColors implements RowMapper<Colors>{

	@Override
	public Colors mapRow(ResultSet rs, int rowNum) throws SQLException {
		Colors colors = new Colors();
		colors.setId(rs.getInt("id"));
		colors.setId(rs.getInt("id_product"));	
		colors.setName(rs.getString("name"));
		colors.setCode(rs.getString("code"));
		colors.setCode(rs.getString("img"));
		return colors;
	}

}