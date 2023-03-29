package ElectronicShop.Cotroller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ElectronicShop.Entity.Users;

@Controller
public class UserController extends BaseController {

	@RequestMapping(value = { "/dang-ky" }, method = RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}
	
	@RequestMapping(value = { "/dang-ky" }, method = RequestMethod.POST)
	public ModelAndView CreateAccount(@ModelAttribute("user") Users user) {

		return _mvShare;
	}

	@RequestMapping(value = { "/dang-nhap" }, method = RequestMethod.GET)
	public ModelAndView Login() {
		_mvShare.setViewName("user/account/login");
		return _mvShare;
	}
}
