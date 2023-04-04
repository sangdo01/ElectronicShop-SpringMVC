package ElectronicShop.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import ElectronicShop.Entity.Categories;
import ElectronicShop.Entity.Slides;

@Service
public interface ICategoriesManageSercive {

	public List<Categories> getAllCaterories();

	public int addCategory(Categories categories);

	public int deleteCategoryByID(int id);

	public int updateCategory(Categories categories);

	public Categories findCategoryByID(int id);
}
