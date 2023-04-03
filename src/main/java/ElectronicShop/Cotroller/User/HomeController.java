package ElectronicShop.Cotroller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ElectronicShop.Service.User.ContactServiceImpl;
import ElectronicShop.Entity.Contact;
import ElectronicShop.Entity.Users;
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
	public ModelAndView Contact() {
		_mvShare.setViewName("user/about/contact");
		_mvShare.addObject("ContactModel", new Contact());
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
