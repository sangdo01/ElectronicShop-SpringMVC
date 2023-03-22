package ElectronicShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dao.CategoriesDao;
import ElectronicShop.Dao.SlidesDao;
import ElectronicShop.Entity.Categories;
import ElectronicShop.Entity.Slides;
@Service
public class HomeServiceImpl implements IHomeService{

	@Autowired
	private SlidesDao sileDao;
	@Autowired
	private CategoriesDao categoriesDao;
	@Override
	public List<Slides> getDataSlides() {
		return sileDao.getDataSlides();
	}
	
	public List<Categories> getDataCategories() {
		return categoriesDao.getDataCategories();
	}

}
