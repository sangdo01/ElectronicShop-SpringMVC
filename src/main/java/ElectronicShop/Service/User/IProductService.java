package ElectronicShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import ElectronicShop.Dto.ProductsDto;

@Service
public interface IProductService {

	public ProductsDto getProductByID(int id);
	
	public List<ProductsDto> getProductByIDCategory(int id);
}
