package ElectronicShop.Cotroller.Admin;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController extends BaseAdminController {

	@RequestMapping(value = { "/admin/index", "/admin", "/admin/trang-chu" })
	public ModelAndView Dashboard(HttpSession session) {
		if (session.getAttribute("InfoAdmin") != null) {
			_mvShare.setViewName("admin/index");
		}
		else {
			_mvShare.setViewName("redirect:/");
		}
		
		return _mvShare;
	}
}
