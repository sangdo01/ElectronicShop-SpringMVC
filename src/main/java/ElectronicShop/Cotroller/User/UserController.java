package ElectronicShop.Cotroller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ElectronicShop.Entity.Users;
import ElectronicShop.Service.User.AccountServiceImpl;

@Controller
public class UserController extends BaseController {

	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();

	@RequestMapping(value = { "/dang-ky" }, method = RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}

	@RequestMapping(value = { "/dang-ky" }, method = RequestMethod.POST)
	public ModelAndView CreateAccount(@ModelAttribute("user") Users user) {
		int count = accountService.addAccount(user);
		if (count > 0) {
			_mvShare.addObject("status", "Đăng ký tài khoản thành công!");
		} else {
			_mvShare.addObject("status", "Đăng ký tài khoản thất bại!");
		}
		_mvShare.setViewName("user/account/register");
		return _mvShare;
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView Login() {
		_mvShare.setViewName("user/account/login");
		_mvShare.addObject("userLoginModel", new Users());
		return _mvShare;
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
	public ModelAndView LoginAccount(HttpSession session, @ModelAttribute("userLoginModel") Users user) {
		user = accountService.checkAccount(user);
		if (user != null) {
			_mvShare.setViewName("redirect:trang-chu");
			session.setAttribute("LoginInfo", user);
			return _mvShare;
		} else {
			_mvShare.addObject("statusLogin", "Đăng nhập thất bại!");
		}
		_mvShare.setViewName("user/account/login");
		return _mvShare;
	}

	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public String Logout(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfo");
		return "redirect:"+request.getHeader("Referer");
	}
	
	
}
