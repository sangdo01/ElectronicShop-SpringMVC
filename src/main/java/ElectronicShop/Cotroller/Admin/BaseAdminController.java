package ElectronicShop.Cotroller.Admin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BaseAdminController {

	public ModelAndView _mvShare = new ModelAndView();

	public String saveFile(CommonsMultipartFile file, HttpSession session, String pathFoder) {
		if (null != file && !file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				String filePath = session.getServletContext().getRealPath("/") + "assets" + File.separator + "user"
						+ File.separator + "img" + File.separator + pathFoder + File.separator
						+ file.getOriginalFilename();

				FileOutputStream fileout = new FileOutputStream(filePath);
				fileout.write(bytes);

				// Closing connections of file
				// using close() method
				fileout.close();
				String fileName = file.getOriginalFilename();
				return fileName;
			} catch (IOException e) {
				/* e.printStackTrace(); */
				System.out.print("========Error upload file: " + e.getMessage());
			}

		} else {
			System.out.print("======== file not exits =======================");
		}
		return null;
	}
}
