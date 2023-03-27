package ElectronicShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dao.ProductsDao;
import ElectronicShop.Dto.ProductsDto;


@Service
public class CategoryServiceImpl implements ICategoryService {

	@Autowired
	private ProductsDao productsDao;

	@Override
	public List<ProductsDto> getDataProductsPaginate(int id, int start, int totalPage) {
		return productsDao.getDataProductsPaginate(id, start, totalPage);
	}

	@Override
	public List<ProductsDto> getAllProductsByID(int id) {
		return productsDao.getAllProductsByID(id);
	}

}
