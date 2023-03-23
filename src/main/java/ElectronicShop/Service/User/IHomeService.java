package ElectronicShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dto.ProductsDto;
import ElectronicShop.Entity.Categories;
import ElectronicShop.Entity.Menu;
import ElectronicShop.Entity.Slides;
@Service
public interface IHomeService {

	@Autowired
	public List<Slides> getDataSlides();
	public List<Categories> getDataCategories();
	public List<Menu> getDataMenu();
	public List<ProductsDto> getDataProducts();
}
