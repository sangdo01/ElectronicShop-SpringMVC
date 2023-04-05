package ElectronicShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperProducts implements RowMapper<Product> {

	@Override
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		Product prodtucts = new Product();
		prodtucts.setId(rs.getInt("id"));
		prodtucts.setId_category(rs.getInt("id_category"));
		prodtucts.setSizes(rs.getString("sizes"));
		prodtucts.setName(rs.getString("name"));
		prodtucts.setPrice(rs.getDouble("price"));
		prodtucts.setSale(rs.getInt("sale"));
		prodtucts.setTitle(rs.getString("title"));
		prodtucts.setHighlight(rs.getBoolean("highlight"));
		prodtucts.setNew_product(rs.getBoolean("new_product"));
		prodtucts.setDetails(rs.getString("details"));
		prodtucts.setCreated_at(rs.getDate("created_at"));
		prodtucts.setUpdated_at(rs.getDate("updated_at"));

		return prodtucts;
	}

}
