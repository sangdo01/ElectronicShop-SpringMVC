package ElectronicShop.Cotroller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ElectronicShop.Service.Admin.BillManageServiceImpl;

@Controller
public class BillManageController extends BaseAdminController{

	@Autowired
	BillManageServiceImpl billManageService = new BillManageServiceImpl();

	@RequestMapping(value = { "/admin/list-bills" })
	public ModelAndView listBills(HttpSession session) {
		/*
		 * if (session.getAttribute("InfoAdmin") != null) {
		 * _mvShare.addObject("listCategories",
		 * categoriesManageService.getAllCaterories());
		 * _mvShare.setViewName("admin/categories/list_categories"); } else {
		 * _mvShare.setViewName("redirect:/"); }
		 */
		

		_mvShare.addObject("listBills", billManageService.getAllBills());
		_mvShare.setViewName("admin/bills/list_bills");
		return _mvShare;
	}
	
	@RequestMapping(value = "/admin/delete-bill/{id}", method = RequestMethod.GET)
	public ModelAndView deleteUser(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		int check = billManageService.deleteBillByID(id);

		if (check > 0) {
			_mvShare.addObject("statusDelete", "Xóa thành công!");
		} else {
			_mvShare.addObject("statusDelete", "Xóa thất bại!");
		}
		_mvShare.setViewName("redirect:" + request.getHeader("Referer"));
		return _mvShare;
	}
}
