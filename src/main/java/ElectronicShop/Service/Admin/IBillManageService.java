package ElectronicShop.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import ElectronicShop.Entity.Bills;

@Service
public interface IBillManageService {

	public List<Bills> getAllBills();

	/* public int addCategory(Categories categories); */

	public int deleteBillByID(int id);

	/*
	 * public int updateBill(Bills bills);
	 * 
	 * public Bills findBillByID(int id);
	 */
}
