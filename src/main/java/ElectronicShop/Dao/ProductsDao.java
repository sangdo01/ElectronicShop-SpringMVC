package ElectronicShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import ElectronicShop.Dto.ProductsDto;
import ElectronicShop.Dto.ProductsDtoMapper;

@Repository
public class ProductsDao extends BaseDao {

	private final boolean YES = true;
	private final boolean NO = false;

	private StringBuffer sqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("select ");
		sql.append("p.id as id_product ");
		sql.append(", p.id_category ");
		sql.append(", p.sizes ");
		sql.append(", p.name ");
		sql.append(", p.price ");
		sql.append(", p.sale ");
		sql.append(", p.title ");
		sql.append(", p.highlight ");
		sql.append(", p.new_product ");
		sql.append(", p.details ");
		sql.append(", c.id as id_color ");
		sql.append(", c.name as name_color ");
		sql.append(", c.code as code_color ");
		sql.append(", c.img ");
		sql.append(", p.created_at ");
		sql.append(", p.updated_at ");
		sql.append("from ");
		sql.append("products as p ");
		sql.append("INNER JOIN colors as c ");
		sql.append("on p.id = c.id_product ");

		return sql;
	}

	private String sqlProducts(boolean newProduct, boolean highLight) {
		StringBuffer sql = sqlString();
		sql.append("where 1 = 1 ");
		if (highLight) {
			sql.append("and p.highlight = true ");
		}
		if (newProduct) {
			sql.append("and p.new_product = true ");
		}
		sql.append("group by p.id, c.id_product ");
		sql.append("order by rand() ");
		if (highLight) {
			sql.append("limit 9 ");
		}
		if (newProduct) {
			sql.append("limit 12 ");
		}

		/* sql = sqlString(); */
		return sql.toString();
	}

	private StringBuffer sqlProductsByID(int id) {
		StringBuffer sql = sqlString();
		sql.append("where 1 = 1 ");
		sql.append("and id_category = " + id + " ");
		return sql;
	}

	private String sqlProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sql = sqlProductsByID(id);
		sql.append("limit " + start + ", " + totalPage);
		return sql.toString();
	}

	public List<ProductsDto> getDataProducts() {
		String sql = sqlProducts(YES, NO);
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}

	public List<ProductsDto> getAllProductsByID(int id) {
		String sql = sqlProductsByID(id).toString();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}

	public List<ProductsDto> getDataProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sqlGetDataByID = sqlProductsByID(id);
		List<ProductsDto> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductsDtoMapper());
		List<ProductsDto> listProducts = new ArrayList<ProductsDto>();
		if (listProductsByID.size() > 0) {
			String sql = sqlProductsPaginate(id, start, totalPage);
			listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
			
		}
		return listProducts;

	}
}
