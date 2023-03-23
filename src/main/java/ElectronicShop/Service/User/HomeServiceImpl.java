package ElectronicShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dao.CategoriesDao;
import ElectronicShop.Dao.MenuDao;
import ElectronicShop.Dao.ProductsDao;
import ElectronicShop.Dao.SlidesDao;
import ElectronicShop.Dto.ProductsDto;
import ElectronicShop.Entity.Categories;
import ElectronicShop.Entity.Menu;
import ElectronicShop.Entity.Slides;
@Service
public class HomeServiceImpl implements IHomeService{

	@Autowired
	private SlidesDao sileDao;
	@Autowired
	private CategoriesDao categoriesDao;
	@Autowired
	private ProductsDao productsDao;
	@Autowired
	private MenuDao menuDao;
	@Override
	public List<Slides> getDataSlides() {
		return sileDao.getDataSlides();
	}
	
	public List<Categories> getDataCategories() {
		return categoriesDao.getDataCategories();
	}

	public List<Menu> getDataMenu() {
		return menuDao.getDataMenu();
	}

	@Override
	public List<ProductsDto> getDataProducts() {
		List<ProductsDto> listProducts = productsDao.getDataProducts();
		return listProducts;
	}

}
