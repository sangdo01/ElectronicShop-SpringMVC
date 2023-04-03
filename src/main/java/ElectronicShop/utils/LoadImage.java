package ElectronicShop.utils;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoadImage
 */
/* @WebServlet("/LoadImage") */
@WebServlet(urlPatterns = "/image/*")
public class LoadImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private String imagePath;

	

	
	
	@Override
	public void init() throws ServletException {
		imagePath = System.getProperty("catalina.home")+ File.separator + "assets/user/img";
	}



	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get request image by path info
		String requestImage = request.getPathInfo();
		if (null == requestImage) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			return;
		}
		
		//decode the file name
		File image = new File(imagePath, URLDecoder.decode(requestImage, "UTF-8"));
		
		//check if file actually exits in file system
		if (!image.exists()) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			return;
		}
		
		//get content type file name
		String contentType = getServletContext().getMimeType(image.getName());
		
		//check if file is actually an image(avoid download of orther files by hacker)
		if (contentType == null || !contentType.startsWith("image")) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			return;
		}
		
		response.reset();
		response.setContentType(contentType);
		response.setHeader("Content-Length", String.valueOf(image.length()));
		
		// write image content to respone
		Files.copy(image.toPath(), response.getOutputStream());
	}


}
