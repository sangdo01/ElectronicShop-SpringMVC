package ElectronicShop.Cotroller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	@RequestMapping(value = {"/admin/index", "/admin"})
	public ModelAndView Dashboard() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/index");
		return mv;
	}
}
