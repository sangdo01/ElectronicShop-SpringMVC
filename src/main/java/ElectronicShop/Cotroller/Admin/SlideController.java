package ElectronicShop.Cotroller.Admin;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ElectronicShop.Entity.Slides;
import ElectronicShop.Service.Admin.SlideServiceImpl;

@Controller
public class SlideController extends BaseAdminController {

	@Autowired
	SlideServiceImpl slideService = new SlideServiceImpl();

	@RequestMapping(value = { "/admin/list-slide" })
	public ModelAndView ListSlide(HttpSession session) {
		if (session.getAttribute("InfoAdmin") != null) {
			_mvShare.addObject("listSlides", slideService.getAllSlides());
			_mvShare.setViewName("admin/slide/list_slide");
		} else {
			_mvShare.setViewName("redirect:/");
		}

		return _mvShare;
	}

	@RequestMapping(value = { "/admin/add-slide" }, method = RequestMethod.GET)
	public ModelAndView AddSlide() {
		_mvShare.setViewName("admin/slide/add_slide");
		_mvShare.addObject("slides", new Slides());
		return _mvShare;
	}

	@RequestMapping(value = { "/admin/add-slide" }, method = RequestMethod.POST)
	public String saveSlide(@ModelAttribute("slides") Slides slides,
			@RequestParam(value = "image", required = false) CommonsMultipartFile photo, HttpSession session) {
		String pathFoder = "slide"; 
		slides.setImg(saveFile(photo, session, pathFoder));
		slideService.addSlide(slides);

		return "redirect:list-slide";
	}

	
}
