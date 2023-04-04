package ElectronicShop.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import ElectronicShop.Entity.Menu;
import ElectronicShop.Entity.Slides;
import ElectronicShop.Entity.Users;

@Service
public interface ISlideService {

	public List<Slides> getAllSlides();

	
	public int addSlide(Slides slides);
	
	public int deleteSlideByID(int id);
	
	public int updateSlideByID(Slides slides);
	
	public Slides findSlideByID(int id);
}
