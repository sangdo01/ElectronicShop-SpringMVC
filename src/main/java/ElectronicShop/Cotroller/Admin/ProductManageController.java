package ElectronicShop.Cotroller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ElectronicShop.Service.Admin.ProductManageServiceImpl;

@Controller
public class ProductManageController extends BaseAdminController {

	@Autowired
	ProductManageServiceImpl productManageService = new ProductManageServiceImpl();

	@RequestMapping(value = { "/admin/list-product" })
	public ModelAndView listProduct(HttpSession session) {

		/*
		 * if (session.getAttribute("InfoAdmin") != null) {
		 * 
		 * } else { _mvShare.setViewName("redirect:/"); }
		 */

		_mvShare.addObject("listProducts", productManageService.getAllProduct());
		_mvShare.setViewName("admin/products/list_products");
		return _mvShare;
	}

	@RequestMapping(value = "/admin/delete-product/{id}", method = RequestMethod.GET)
	public ModelAndView deleteProduct(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		int check = productManageService.deleteProductByID(id);

		if (check > 0) {
			_mvShare.addObject("statusDelete", "Xóa thành công!");
		} else {
			_mvShare.addObject("statusDelete", "Xóa thất bại!");
		}
		_mvShare.setViewName("redirect:" + request.getHeader("Referer"));
		return _mvShare;
	}
}
