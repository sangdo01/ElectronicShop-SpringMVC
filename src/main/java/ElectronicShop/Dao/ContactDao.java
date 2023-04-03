package ElectronicShop.Dao;

import org.springframework.stereotype.Repository;

import ElectronicShop.Entity.Contact;

@Repository
public class ContactDao extends BaseDao {

	public int addContact(Contact contact) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO contact ");
		sql.append("( ");
		sql.append("	email, ");
		sql.append("	name, ");
		sql.append("	content ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'" + contact.getEmail() + "', ");
		sql.append("	'" + contact.getName() + "', ");
		sql.append("	'" + contact.getContent() + "' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
}
