package ElectronicShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dao.ProductsDao;
import ElectronicShop.Dto.ProductsDto;
@Service
public class ProductServiceImpl implements IProductService{

	@Autowired
	ProductsDao productsDao = new ProductsDao();
	@Override
	public ProductsDto getProductByID(int id) {
		List<ProductsDto> lisProduct = productsDao.getProductByID(id);
		// TODO Auto-generated method stub
		return lisProduct.get(0);
	}
	@Override
	public List<ProductsDto> getProductByIDCategory(int id) {
		// TODO Auto-generated method stub
		return productsDao.getAllProductsByID(id);
	}

}
