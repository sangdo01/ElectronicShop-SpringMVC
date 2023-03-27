package ElectronicShop.Cotroller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ElectronicShop.Service.User.IProductService;

@Controller
public class ProductController extends BaseController{
	
	@Autowired
	private IProductService _productService;
	
	@RequestMapping(value = {"chi-tiet-san-pham/{id}"})
	public ModelAndView Index(@PathVariable int id) {
		_mvShare.setViewName("user/products/product");
		_mvShare.addObject("product", _productService.getProductByID(id));
		int idCategory = _productService.getProductByID(id).getId_category();
		_mvShare.addObject("productByIDCategory", _productService.getProductByIDCategory(idCategory));
		return _mvShare;
	}

}
