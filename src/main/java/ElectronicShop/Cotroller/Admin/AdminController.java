package ElectronicShop.Cotroller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController extends BaseAdminController{

	@RequestMapping(value = {"/admin/index", "/admin", "/admin/trang-chu"})
	public ModelAndView Dashboard() {
		_mvShare.setViewName("admin/index");
		return _mvShare;
	}
}
