package ElectronicShop.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductsDtoMapper implements RowMapper<ProductsDto> {

	@Override
	public ProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDto prodtucts = new ProductsDto();
		prodtucts.setId_product(rs.getInt("id_product"));
		prodtucts.setId_category(rs.getInt("id_category"));
		prodtucts.setSizes(rs.getString("sizes"));
		prodtucts.setName(rs.getString("name"));
		prodtucts.setPrice(rs.getDouble("price"));
		prodtucts.setSale(rs.getInt("sale"));
		prodtucts.setTitle(rs.getString("title"));
		prodtucts.setHighlight(rs.getBoolean("highlight"));
		prodtucts.setNew_product(rs.getBoolean("new_product"));
		prodtucts.setDetails(rs.getString("details"));
		prodtucts.setId_color(rs.getInt("id_color"));
		prodtucts.setName_color(rs.getString("name_color"));
		prodtucts.setCode_color(rs.getString("code_color"));
		prodtucts.setImg(rs.getString("img"));
		prodtucts.setCreated_at(rs.getDate("created_at"));
		prodtucts.setUpdated_at(rs.getDate("updated_at"));

		return prodtucts;
	}

}
