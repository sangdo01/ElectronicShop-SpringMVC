package ElectronicShop.Cotroller.User;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import ElectronicShop.Service.User.HomeServiceImpl;

@Controller
public class BaseController {

	@Autowired
	HomeServiceImpl _homeService;
	public ModelAndView _mvShare = new ModelAndView();
	
	@PostConstruct
	public ModelAndView Init() {
		_mvShare.addObject("menu", _homeService.getDataMenu());
		_mvShare.addObject("cateShare", _homeService.getDataCategories());
		return _mvShare;
	}
}
