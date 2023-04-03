package ElectronicShop.Cotroller.User;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ElectronicShop.Entity.Contact;
import ElectronicShop.Entity.Users;
import ElectronicShop.Service.User.ContactServiceImpl;
@Controller
public class HomeController extends BaseController {

	@Autowired
	ContactServiceImpl contactService = new ContactServiceImpl();
	@RequestMapping(value = { "/", "/trang-chu" })
	public ModelAndView Index() {
		_mvShare.addObject("slides", _homeService.getDataSlides());
		_mvShare.addObject("categories", _homeService.getDataCategories());
		_mvShare.addObject("products", _homeService.getDataProducts());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}

	@RequestMapping(value = "/about")
	public ModelAndView AboutUs() {
		_mvShare.setViewName("user/about/about_us");
		return _mvShare;
	}

	@RequestMapping(value = "/lien-he", method = RequestMethod.GET)
	public ModelAndView Contact( HttpSession session) {
		_mvShare.setViewName("user/about/contact");
		Users loginInfo = (Users) session.getAttribute("LoginInfo");
		Contact contact = new Contact();
		if (loginInfo != null) {
			contact.setEmail(loginInfo.getUser());
			contact.setName(loginInfo.getDisplay_name());
		}
		_mvShare.addObject("ContactModel", contact);
		return _mvShare;
	}
	
	@RequestMapping(value = { "/lien-he" }, method = RequestMethod.POST)
	public ModelAndView Contact(@ModelAttribute("ContactModel") Contact contact) {
		int count = contactService.addContact(contact);
		if (count > 0) {
			_mvShare.addObject("status", "Liên hệ thành công!");
			_mvShare.setViewName("redirect:trang-chu");
			return _mvShare;
		} else {
			_mvShare.addObject("status", "Liên hệ thất bại!");
		}
		_mvShare.setViewName("user/about/contact");
		return _mvShare;
	}
}
