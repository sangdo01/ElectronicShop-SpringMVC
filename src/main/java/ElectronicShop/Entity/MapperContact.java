package ElectronicShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperContact implements RowMapper<Contact> {

	@Override
	public Contact mapRow(ResultSet rs, int rowNum) throws SQLException {
		Contact contact = new Contact();
		contact.setId(rs.getInt("id"));
		contact.setEmail(rs.getString("email"));
		contact.setName(rs.getString("name"));
		contact.setContent(rs.getString("content"));
		return contact;
	}

}