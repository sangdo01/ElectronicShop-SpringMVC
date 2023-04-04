package ElectronicShop.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dao.MenuDao;
import ElectronicShop.Dao.SlidesDao;
import ElectronicShop.Entity.Menu;
import ElectronicShop.Entity.Slides;

@Service
public class SlideServiceImpl implements ISlideService {

	@Autowired
	private SlidesDao slidesDao;


	@Override
	public List<Slides> getAllSlides() {
		return slidesDao.getDataSlides();
	}

	@Override
	public int addSlide(Slides slides) {
		// TODO Auto-generated method stub
		return slidesDao.addSlide(slides);
	}

	@Override
	public int deleteSlideByID(int id) {
		// TODO Auto-generated method stub
		return slidesDao.deleteSlide(id);
	}

	@Override
	public int updateSlideByID(Slides slides) {
		// TODO Auto-generated method stub
		return slidesDao.updateSlide(slides);
	}

	@Override
	public Slides findSlideByID(int id) {
		return slidesDao.getSlideByID(id);
	}

	



}
