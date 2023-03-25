package ElectronicShop.Cotroller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CategoryController extends BaseController {

	/*
	 * @RequestMapping(value = "/san-pham") public ModelAndView
	 * Product(@RequestParam(required = false) String id) {
	 * _mvShare.setViewName("user/products/category"); if(id != null) {
	 * _mvShare.addObject("idCategory", id); }
	 * 
	 * return _mvShare;
	 * 
	 * }
	 */
	
	@RequestMapping(value = "/san-pham")
	public ModelAndView Product() {
		_mvShare.setViewName("user/products/category");		
		return _mvShare;

	}

	@RequestMapping(value = "/san-pham/{id}")
	public ModelAndView ProductByIdCategory(@PathVariable String id) {
		_mvShare.setViewName("user/products/category");
		_mvShare.addObject("idCategory", id);
		return _mvShare;

	}

}
