package ElectronicShop.Service.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dao.BillsDao;
import ElectronicShop.Dto.CartDto;
import ElectronicShop.Entity.BillDetail;
import ElectronicShop.Entity.Bills;

@Service
public class BillsServiceImpl implements IBillService {

	@Autowired
	private BillsDao billsDao;

	@Override
	public int addBills(Bills bill) {
		return billsDao.addBills(bill);
	}

	@Override
	public void addBillsDetail(HashMap<Integer, CartDto> carts) {
		long idBills = billsDao.getIDLastBills();
		for (Map.Entry<Integer, CartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idBills);
			billDetail.setId_product(itemCart.getValue().getProduct().getId_product());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.addBillsDetail(billDetail);

		}

	}

}
