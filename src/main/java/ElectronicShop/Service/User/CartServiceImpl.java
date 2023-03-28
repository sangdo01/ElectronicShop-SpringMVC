package ElectronicShop.Service.User;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dao.CartDao;
import ElectronicShop.Dto.CartDto;

@Service
public class CartServiceImpl implements ICartService {

	@Autowired
	private CartDao cartDao = new CartDao();

	@Override
	public HashMap<Integer, CartDto> addCart(int id, HashMap<Integer, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartDao.addCart(id, cart);
	}

	@Override
	public HashMap<Integer, CartDto> editCart(int id, int quanty, HashMap<Integer, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartDao.editCart(id, quanty, cart);
	}

	@Override
	public HashMap<Integer, CartDto> deleteCart(int id, HashMap<Integer, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartDao.deleteCart(id, cart);
	}

	@Override
	public int totalQuanty(HashMap<Integer, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartDao.totalQuanty(cart);
	}

	@Override
	public double totalPrice(HashMap<Integer, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartDao.totalPrice(cart);
	}

}
