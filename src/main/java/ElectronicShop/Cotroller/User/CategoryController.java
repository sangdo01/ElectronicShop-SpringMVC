package ElectronicShop.Cotroller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ElectronicShop.Dto.PaginateDto;
import ElectronicShop.Service.User.CategoryServiceImpl;
import ElectronicShop.Service.User.PaginateServiceImpl;

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

	@Autowired
	private CategoryServiceImpl categoryService;
	@Autowired
	private PaginateServiceImpl paginateService;

	private int totalProductsPage = 9;

	@RequestMapping(value = "/san-pham")
	public ModelAndView Product() {
		_mvShare.setViewName("user/products/category");
		return _mvShare;

	}

	@RequestMapping(value = "/san-pham/{id}")
	public ModelAndView ProductByIdCategory(@PathVariable String id) {
		_mvShare.setViewName("user/products/category");
		int totalData = categoryService.getAllProductsByID(Integer.parseInt(id)).size();
		PaginateDto paginateInfo = paginateService.getInfoPaginate(totalData, totalProductsPage, 1);
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryService.getDataProductsPaginate(Integer.parseInt(id),
				paginateInfo.getStart(),totalProductsPage));
		return _mvShare;
	}

	@RequestMapping(value = "/san-pham/{id}/{currentPage}")
	public ModelAndView ProductByIdCategory(@PathVariable String id, @PathVariable String currentPage) {
		_mvShare.setViewName("user/products/category");
		int totalData = categoryService.getAllProductsByID(Integer.parseInt(id)).size();
		PaginateDto paginateInfo = paginateService.getInfoPaginate(totalData, totalProductsPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryService.getDataProductsPaginate(Integer.parseInt(id),
				paginateInfo.getStart(), totalProductsPage));
		return _mvShare;

	}

}
