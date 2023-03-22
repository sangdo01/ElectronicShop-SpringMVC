package ElectronicShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dao.SlidesDao;
import ElectronicShop.Entity.Slides;
@Service
public class HomeServiceImpl implements IHomeService{

	@Autowired
	private SlidesDao sileDao;
	@Override
	public List<Slides> getDataSlides() {
		// TODO Auto-generated method stub
		return sileDao.getDataSlides();
	}

}
