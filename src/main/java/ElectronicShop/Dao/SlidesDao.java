package ElectronicShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import ElectronicShop.Entity.MapperSlides;
import ElectronicShop.Entity.Slides;
import ElectronicShop.Entity.Users;

@Repository
public class SlidesDao extends BaseDao{
	
	
	public List<Slides> getDataSlides(){
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
		sql.append("	'" + slides.getCaption()+ "', ");
		sql.append("	'" + slides.getContent() + "' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
}
