package ElectronicShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import ElectronicShop.Entity.Categories;
import ElectronicShop.Entity.MapperCategories;
import ElectronicShop.Entity.MapperSlides;
import ElectronicShop.Entity.Slides;

@Repository
public class CategoriesDao extends BaseDao {

	public List<Categories> getDataCategories() {
		List<Categories> list = new ArrayList<Categories>();
		String sql = "SELECT * FROM categories";
		list = _jdbcTemplate.query(sql, new MapperCategories());
		return list;
	}

	public int addCategory(Categories categories) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO categories ");
		sql.append("( ");
		sql.append("	name, ");
		sql.append("	desciption ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'" + categories.getName() + "', ");
		sql.append("	'" + categories.getDesciption() + "' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public int deleteCategory(int id) {
		String sql = "delete from categories where id = ?";
		int result = _jdbcTemplate.update(sql, id);
		return result;
	}

	public int updateCategory(Categories categories) {
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE categories ");
		sql.append("SET ");
		sql.append("name = '" + categories.getName() + "', ");
		sql.append("desciption = '" + categories.getDesciption() + "' ");
		sql.append("WHERE id = '" + categories.getId() + "';");
		int update = _jdbcTemplate.update(sql.toString());
		return update;
	}

	public Categories getCategoryByID(int id) {
		String sql = "SELECT * FROM categories WHERE id = " + id;
		Categories result = _jdbcTemplate.queryForObject(sql, new MapperCategories());
		return result;
	}
}
