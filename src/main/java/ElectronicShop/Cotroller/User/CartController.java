package ElectronicShop.Cotroller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ElectronicShop.Dto.CartDto;
import ElectronicShop.Entity.Bills;
import ElectronicShop.Entity.Users;
import ElectronicShop.Service.User.BillsServiceImpl;
import ElectronicShop.Service.User.CartServiceImpl;

@Controller
public class CartController extends BaseController {

	@Autowired
	private CartServiceImpl cartService = new CartServiceImpl();

	@Autowired
	private BillsServiceImpl billsService = new BillsServiceImpl();

	@Autowired

	@RequestMapping(value = "/gio-hang")
	public ModelAndView Index() {
		_mvShare.addObject("slides", _homeService.getDataSlides());
		_mvShare.addObject("categories", _homeService.getDataCategories());
		_mvShare.addObject("products", _homeService.getDataProducts());
		_mvShare.setViewName("user/cart/list_cart");
		return _mvShare;
	}

	@RequestMapping(value = "/add-cart/{id}")
	public String addCart(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Integer, CartDto>();
		}
		cart = cartService.addCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.totalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "/edit-cart/{id}/{quanty}")
	public String editCart(HttpServletRequest request, HttpSession session, @PathVariable int id,
			@PathVariable int quanty) {
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Integer, CartDto>();
		}
		cart = cartService.editCart(id, quanty, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.totalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.totalPrice(cart));

		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "/delete-cart/{id}")
	public String deleteCart(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Integer, CartDto>();
		}
		cart = cartService.deleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.totalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.totalPrice(cart));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public ModelAndView checkOut(HttpServletRequest request, HttpSession session) {
		_mvShare.setViewName("user/bill/checkout");
		Bills bills = new Bills();
		Users loginInfo = (Users) session.getAttribute("LoginInfo");
		if (loginInfo != null) {
			bills.setAddress(loginInfo.getAddress());
			bills.setDisplay_name(loginInfo.getDisplay_name());
			bills.setUser(loginInfo.getUser());
		}
		_mvShare.addObject("bills", bills);
		return _mvShare;
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String checkOutBill(HttpServletRequest request, HttpSession session, @ModelAttribute("bills") Bills bill) {

		int quanty = Integer.parseInt(session.getAttribute("TotalQuantyCart").toString());
		bill.setQuanty(quanty);
		double total = Double.parseDouble(session.getAttribute("TotalPriceCart").toString());
		bill.setTotal(total);
		/*
		 * bill.setQuanty(Integer.parseInt((String)
		 * session.getAttribute("TotalQuantyCart")));
		 * bill.setTotal(Double.parseDouble((String)
		 * session.getAttribute("TotalPriceCart")));
		 */
		if (billsService.addBills(bill) > 0) {
			HashMap<Integer, CartDto> carts = (HashMap<Integer, CartDto>) session.getAttribute("Cart");
			billsService.addBillsDetail(carts);
		}
		session.removeAttribute("Cart");
		return "redirect:trang-chu";
	}

}
