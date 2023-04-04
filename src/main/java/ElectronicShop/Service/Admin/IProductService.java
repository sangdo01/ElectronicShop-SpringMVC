package ElectronicShop.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import ElectronicShop.Entity.Slides;

@Service
public interface IProductService {

public List<Slides> getAllSlides();

	
/*
 * public int addProduct(Produc slides);
 * 
 * public int deleteSlideByID(int id);
 * 
 * public int updateSlideByID(Slides slides);
 * 
 * public Slides findSlideByID(int id);
 */
}
