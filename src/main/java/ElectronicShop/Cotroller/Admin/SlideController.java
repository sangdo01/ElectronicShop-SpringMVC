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
			@RequestParam(value = "image", required = false) MultipartFile photo) {
		/*
		 * _mvShare.setViewName("admin/slide/add_slide"); _mvShare.addObject("slide",
		 * new Slides());
		 */
		slides.setImg(saveFile(photo));
		slideService.addSlide(slides);

		return "redirect:list-slide";
	}

	public String saveFile(MultipartFile file) {
		if (null != file && !file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "assets/user/img");
				if (!dir.exists()) {
					dir.mkdirs();
				}
				// Create the file on server
				String name = String.valueOf(new Date().getTime() + ".jpg");
				/* String name = String.valueOf(file.getOriginalFilename()); */
				File serverFile = new File(dir.getAbsolutePath() + File.separator + name);
				System.out.print("=======================path of img on server: " + serverFile.getPath());
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				return name;

			} catch (IOException e) {
				/* e.printStackTrace(); */
				System.out.print("========Error upload file: " + e.getMessage());
			}

		} else {
			System.out.print("========file not exits ");
		}
		return null;
	}
}
