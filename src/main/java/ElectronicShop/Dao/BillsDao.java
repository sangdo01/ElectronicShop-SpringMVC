package ElectronicShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import ElectronicShop.Entity.BillDetail;
import ElectronicShop.Entity.Bills;
import ElectronicShop.Entity.Categories;
import ElectronicShop.Entity.MapperBills;
import ElectronicShop.Entity.MapperCategories;

@Repository
public class BillsDao extends BaseDao {

	public int addBills(Bills bill) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO bills ");
		sql.append("( ");
		sql.append("	`user`, ");
		sql.append("	`phone`, ");
		sql.append("	`display_name`, ");
		sql.append("	`address`, ");
		sql.append("	`total`, ");
		sql.append("	`quanty`, ");
		sql.append("	`note` ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	'" + bill.getUser() + "', ");
		sql.append("	'" + bill.getPhone() + "', ");
		sql.append("	'" + bill.getDisplay_name() + "', ");
		sql.append("	'" + bill.getAddress() + "', ");
		sql.append("	" + bill.getTotal() + ", ");
		sql.append("	" + bill.getQuanty() + ", ");
		sql.append("	'" + bill.getNote() + "' ");
		sql.append(");");
		int insert_bill = _jdbcTemplate.update(sql.toString());
		return insert_bill;
	}

	public long getIDLastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM bills;");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class);
		return id;
	}

	public int addBillsDetail(BillDetail billDetail) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO billdetail ");
		sql.append("( ");
		sql.append("	id_product, ");
		sql.append("	id_bills, ");
		sql.append("	quanty, ");
		sql.append("	total ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("	" + billDetail.getId_product() + ", ");
		sql.append("	" + billDetail.getId_bills() + ", ");
		sql.append("	" + billDetail.getQuanty() + ", ");
		sql.append("	" + billDetail.getTotal() + " ");
		sql.append(")");
		int insert_billDetail = _jdbcTemplate.update(sql.toString());
		return insert_billDetail;
	}

	public List<Bills> getAllBills() {
		List<Bills> list = new ArrayList<Bills>();
		String sql = "SELECT * FROM bills";
		list = _jdbcTemplate.query(sql, new MapperBills());
		return list;
	}
	
	public int deleteBill(int id) {
		String sql = "delete from bills where id = ?";
		int result = _jdbcTemplate.update(sql, id);
		return result;
	}

	/*
	 * public int updateBill(Categories categories) { StringBuffer sql = new
	 * StringBuffer(); sql.append("UPDATE bills "); sql.append("SET ");
	 * sql.append("name = '" + categories.getName() + "', ");
	 * sql.append("desciption = '" + categories.getDesciption() + "' ");
	 * sql.append("WHERE id = '" + categories.getId() + "';"); int update =
	 * _jdbcTemplate.update(sql.toString()); return update; }
	 * 
	 * public Categories getCategoryByID(int id) { String sql =
	 * "SELECT * FROM categories WHERE id = " + id; Categories result =
	 * _jdbcTemplate.queryForObject(sql, new MapperCategories()); return result; }
	 */
}
