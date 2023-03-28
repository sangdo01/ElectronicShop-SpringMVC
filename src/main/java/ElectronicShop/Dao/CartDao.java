package ElectronicShop.Dao;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import ElectronicShop.Dto.CartDto;
import ElectronicShop.Dto.ProductsDto;

public class CartDao extends BaseDao {

	ProductsDao productsDao = new ProductsDao();

	public HashMap<Integer, CartDto> addCart(int id, HashMap<Integer, CartDto> cart) {
		CartDto itemCart = new CartDto();
		ProductsDto product = productsDao.findProductByID(id);
		if (product != null) {
			itemCart.setProduct(product);
			itemCart.setQuanty(1);
			itemCart.setTotalPrice(product.getPrice());
		}
		cart.put(id, itemCart);
		return cart;
	}

	public HashMap<Integer, CartDto> editCart(int id, int quanty, HashMap<Integer, CartDto> cart) {
		if (cart == null) {
			return cart;
		}
		CartDto itemCart = new CartDto();
		if (cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuanty(quanty);
			double totalPrice = quanty * itemCart.getProduct().getPrice();
			itemCart.setTotalPrice(totalPrice);
		}
		cart.put(id, itemCart);
		return cart;
	}

	public HashMap<Integer, CartDto> deleteCart(int id, HashMap<Integer, CartDto> cart) {
		if (cart == null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}

	public int totalQuanty(HashMap<Integer, CartDto> cart) {
		int totalQuanty = 0;
		for (Map.Entry<Integer, CartDto> itemCart : cart.entrySet()) {
			totalQuanty += itemCart.getValue().getQuanty();
		}
		return totalQuanty;
	}

	public double totalPrice(HashMap<Integer, CartDto> cart) {
		double totalPrice = 0;
		for (Map.Entry<Integer, CartDto> itemCart : cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotalPrice();
		}
		return totalPrice;
	}
}
