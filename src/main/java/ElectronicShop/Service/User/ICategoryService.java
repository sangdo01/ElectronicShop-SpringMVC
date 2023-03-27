package ElectronicShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import ElectronicShop.Dto.ProductsDto;

@Service
public interface ICategoryService {

	public List<ProductsDto> getAllProductsByID(int id);
	
	//not sure
	public List<ProductsDto> getDataProductsPaginate(int id, int start, int totalPage);
}
