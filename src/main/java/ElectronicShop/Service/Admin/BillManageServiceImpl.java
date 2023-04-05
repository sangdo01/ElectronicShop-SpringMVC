package ElectronicShop.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dao.BillsDao;
import ElectronicShop.Entity.Bills;

@Service
public class BillManageServiceImpl implements IBillManageService{

	@Autowired
	private BillsDao billsDao;

	@Override
	public List<Bills> getAllBills() {
		return billsDao.getAllBills();
	}

	@Override
	public int deleteBillByID(int id) {
		// TODO Auto-generated method stub
		return billsDao.deleteBill(id);
	}


}
