package ElectronicShop.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dao.CategoriesDao;
import ElectronicShop.Entity.Categories;

@Service
public class CategoriesManageServiceImpl implements ICategoriesManageSercive {

	@Autowired
	private CategoriesDao categoriesDao;

	@Override
	public List<Categories> getAllCaterories() {
		return categoriesDao.getDataCategories();
	}

	@Override
	public int addCategory(Categories categories) {
		return categoriesDao.addCategory(categories);
	}

	@Override
	public int deleteCategoryByID(int id) {
		return categoriesDao.deleteCategory(id);
	}

	@Override
	public int updateCategory(Categories categories) {
		return categoriesDao.updateCategory(categories);
	}

	@Override
	public Categories findCategoryByID(int id) {
		return categoriesDao.getCategoryByID(id);
	}

}
