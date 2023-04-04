package ElectronicShop.Cotroller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ElectronicShop.Entity.Categories;
import ElectronicShop.Entity.Slides;
import ElectronicShop.Service.Admin.CategoriesManageServiceImpl;
import ElectronicShop.Service.Admin.SlideServiceImpl;

@Controller
public class CategoryManageController extends BaseAdminController {

	@Autowired
	CategoriesManageServiceImpl categoriesManageService = new CategoriesManageServiceImpl();

	@RequestMapping(value = { "/admin/list-categories" })
	public ModelAndView listCategories(HttpSession session) {
		if (session.getAttribute("InfoAdmin") != null) {
			_mvShare.addObject("listCategories", categoriesManageService.getAllCaterories());
			_mvShare.setViewName("admin/categories/list_categories");
		} else {
			_mvShare.setViewName("redirect:/");
		}

		return _mvShare;
	}

	@RequestMapping(value = { "/admin/add-category" }, method = RequestMethod.GET)
	public ModelAndView addCategory() {
		_mvShare.setViewName("admin/categories/add_category");
		_mvShare.addObject("category", new Categories());
		return _mvShare;
	}

	@RequestMapping(value = { "/admin/add-category" }, method = RequestMethod.POST)
	public ModelAndView addCategory(@ModelAttribute("category") Categories categories) {
		int count = categoriesManageService.addCategory(categories);
		if (count > 0) {
			_mvShare.addObject("status", "Thêm thành công!");
			_mvShare.setViewName("redirect:list-categories");
			return _mvShare;
		} else {
			_mvShare.addObject("status", "Thêm thất bại!");
		}
		_mvShare.setViewName("admin/categories/add_category");
		return _mvShare;

	}

	@RequestMapping(value = { "/admin/edit-category/{id}" }, method = RequestMethod.GET)
	public ModelAndView editCategory(@PathVariable int id) {
		_mvShare.setViewName("admin/categories/edit_category");
		Categories category = categoriesManageService.findCategoryByID(id);
		_mvShare.addObject("category", category);
		return _mvShare;
	}

	@RequestMapping(value = { "/admin/edit-category/{id}" }, method = RequestMethod.POST)
	public String editCategory(@ModelAttribute("category") Categories categories, HttpServletRequest request) {
		categoriesManageService.updateCategory(categories);
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "/admin/delete-category/{id}", method = RequestMethod.GET)
	public ModelAndView deleteUser(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		int check = categoriesManageService.deleteCategoryByID(id);

		if (check > 0) {
			_mvShare.addObject("statusDelete", "Xóa thành công!");
		} else {
			_mvShare.addObject("statusDelete", "Xóa thất bại!");
		}
		_mvShare.setViewName("redirect:" + request.getHeader("Referer"));
		return _mvShare;
	}
}
