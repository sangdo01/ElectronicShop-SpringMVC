package ElectronicShop.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import ElectronicShop.Dto.CartDto;
import ElectronicShop.Entity.Bills;

@Service
public interface IBillService {

	public int addBills(Bills bill);

	public void addBillsDetail(HashMap<Integer, CartDto> carts);
}
