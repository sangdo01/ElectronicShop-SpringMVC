package ElectronicShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSlides implements RowMapper<Slides>{

	@Override
	public Slides mapRow(ResultSet rs, int rowNum) throws SQLException {
		Slides slides = new Slides();
		slides.setIdslides(rs.getInt("idslides"));
		slides.setImg(rs.getString("img"));
		slides.setCaption(rs.getString("caption"));
		slides.setContent(rs.getString("content"));
		return slides;
	}

}
