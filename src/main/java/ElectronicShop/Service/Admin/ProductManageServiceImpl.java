package ElectronicShop.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dao.ProductsDao;
import ElectronicShop.Entity.Product;
import ElectronicShop.Entity.Slides;

@Service
public class ProductManageServiceImpl implements IProductsManageService {

	@Autowired
	ProductsDao productsDao;

	@Override
	public List<Product> getAllProduct() {
		return productsDao.getAllProducts();
	}

	@Override
	public int addProduct(Product product) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteProductByID(int id) {
		// TODO Auto-generated method stub
		return productsDao.deleteProductByID(id);
	}

	@Override
	public int updateProduct(Product product) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Slides findProductByIDManage(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
