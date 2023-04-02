package ElectronicShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import ElectronicShop.Entity.MapperSlides;
import ElectronicShop.Entity.MapperUsers;
import ElectronicShop.Entity.Slides;
import ElectronicShop.Entity.Users;

@Repository
public class UsersDao extends BaseDao {

	public int addAccount(Users user) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO users ");
		sql.append("( ");
		sql.append("	user, ");
		sql.append("	password, ");
		sql.append("	display_name, ");
		sql.append("	address, ");
		sql.append("	id_role ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'" + user.getUser() + "', ");
		sql.append("	'" + user.getPassword() + "', ");
		sql.append("	'" + user.getDisplay_name() + "', ");
		sql.append("	'" + user.getAddress() + "', ");
		sql.append("	'" + 2 + "' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public int addAccountUser(Users user) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO users ");
		sql.append("( ");
		sql.append("	user, ");
		sql.append("	password, ");
		sql.append("	display_name, ");
		sql.append("	address, ");
		sql.append("	id_role ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'" + user.getUser() + "', ");
		sql.append("	'" + user.getPassword() + "', ");
		sql.append("	'" + user.getDisplay_name() + "', ");
		sql.append("	'" + user.getAddress() + "', ");
		sql.append("	'" + 1 + "' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public Users getUserByAccount(Users user) {
		String sql = "SELECT * FROM users WHERE user = '" + user.getUser() + "'";
		Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());
		return result;
	}

	public List<Users> getAllUser() {
		List<Users> listUser = new ArrayList<Users>();
		String sql = "SELECT * FROM users";
		listUser = _jdbcTemplate.query(sql, new MapperUsers());
		return listUser;
	}

	public List<Slides> getDataSlides() {
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT * FROM slides";
		list = _jdbcTemplate.query(sql, new MapperSlides());
		return list;
	}

	public int deleteUsrByID(int id) {
		String sql = "delete from users where id = ?";
		int result = _jdbcTemplate.update(sql,id);
		return result;
	}
}
