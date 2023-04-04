package ElectronicShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import ElectronicShop.Entity.MapperSlides;
import ElectronicShop.Entity.MapperUsers;
import ElectronicShop.Entity.Slides;
import ElectronicShop.Entity.Users;

@Repository
public class SlidesDao extends BaseDao {

	public List<Slides> getDataSlides() {
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT * FROM slides";
		list = _jdbcTemplate.query(sql, new MapperSlides());
		return list;
	}

	public int addSlide(Slides slides) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO slides ");
		sql.append("( ");
		sql.append("	img, ");
		sql.append("	caption, ");
		sql.append("	content ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'" + slides.getImg() + "', ");
		sql.append("	'" + slides.getCaption() + "', ");
		sql.append("	'" + slides.getContent() + "' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

	public int deleteSlide(int id) {
		String sql = "delete from slides where id = ?";
		int result = _jdbcTemplate.update(sql, id);
		return result;
	}

	public int updateSlide(Slides slides) {
		/*
		 * String sql = "update slides set img='" + slides.getImg() + "', caption=" +
		 * slides.getCaption() + ",content='" + slides.getContent() + "' where id=" +
		 * slides.getId() + "";
		 */
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE slides ");
		sql.append("SET ");
		sql.append("img = '" + slides.getImg() + "', ");
		sql.append("caption = '" + slides.getCaption() + "', ");
		sql.append("content = '" + slides.getContent() + "' ");
		sql.append("WHERE id = '" + slides.getId() + "';");
		int update = _jdbcTemplate.update(sql.toString());
		return update;
	}

	public Slides getSlideByID(int id) {
		String sql = "SELECT * FROM slides WHERE id = " + id;
		Slides result = _jdbcTemplate.queryForObject(sql, new MapperSlides());
		return result;
	}
}
