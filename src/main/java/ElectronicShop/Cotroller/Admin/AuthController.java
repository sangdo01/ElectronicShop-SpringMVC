package ElectronicShop.Cotroller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ElectronicShop.Entity.Users;
import ElectronicShop.Service.User.AccountServiceImpl;

@Controller
public class AuthController extends BaseAdminController {

	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();

	@RequestMapping(value = { "/admin-login" }, method = RequestMethod.GET)
	public ModelAndView Login() {
		_mvShare.setViewName("layouts/login_admin");
		_mvShare.addObject("UserModel", new Users());
		return _mvShare;
	}

	@RequestMapping(value = "/admin-login", method = RequestMethod.POST)
	public ModelAndView LoginAccount(HttpSession session, @ModelAttribute("UserModel") Users user) {
		user = accountService.checkAccount(user);
		if (user != null && user.getId_role() == 1) {
			_mvShare.setViewName("redirect:admin/index");
			session.setAttribute("InfoAdmin", user);
			return _mvShare;
		} else {
			_mvShare.addObject("statusLogin", "Đăng nhập thất bại!");
		}
		_mvShare.setViewName("layouts/login_admin");
		return _mvShare;
	}
	
	@RequestMapping(value = "/admin/dang-xuat", method = RequestMethod.GET)
	public String Logout(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("InfoAdmin");
		return "redirect:/";
	}

	@RequestMapping(value = { "/admin/list-user" }, method = RequestMethod.GET)
	public ModelAndView ListUser() {
		_mvShare.addObject("listUser", accountService.getAllUser());
		_mvShare.setViewName("admin/user/list_user");
		return _mvShare;
	}

	@RequestMapping(value = { "/admin/add-user" }, method = RequestMethod.GET)
	public ModelAndView AddUser() {
		_mvShare.setViewName("admin/user/add_user");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}

	@RequestMapping(value = { "/admin/add-user" }, method = RequestMethod.POST)
	public ModelAndView AddUser(@ModelAttribute("user") Users user) {
		int count = accountService.addAccountUser(user);
		if (count > 0) {
			_mvShare.addObject("status", "Đăng ký tài khoản thành công!");
			_mvShare.setViewName("redirect:list-user");
			return _mvShare;
		} else {
			_mvShare.addObject("status", "Đăng ký tài khoản thất bại!");
		}
		_mvShare.setViewName("user/account/register");
		return _mvShare;
	}

	@RequestMapping(value = "/admin/delete-user/{id}", method = RequestMethod.GET)
	public ModelAndView deleteUser(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		int check = accountService.deleteUserByID(id);

		if (check > 0) {
			_mvShare.addObject("statusDeleteUser", "Xóa thành công!");
		} else {
			_mvShare.addObject("statusDeleteUser", "Xóa thất bại!");
		}
		_mvShare.setViewName("redirect:" + request.getHeader("Referer"));
		return _mvShare;
	}

}
