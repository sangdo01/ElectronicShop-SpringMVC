package ElectronicShop.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import ElectronicShop.Entity.Product;
import ElectronicShop.Entity.Slides;

@Service
public interface IProductsManageService {

public List<Product> getAllProduct();	

  public int addProduct(Product product);
  
  public int deleteProductByID(int id);
  
  public int updateProduct(Product product);
  
  public Slides findProductByIDManage(int id);
 
}
