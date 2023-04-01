package ElectronicShop.Cotroller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthController extends BaseAdminController{

	@RequestMapping(value = { "/admin-login" }, method = RequestMethod.GET)
	public ModelAndView Register() {		
		_mvShare.setViewName("layouts/login_admin");
		return _mvShare;
	}
}
