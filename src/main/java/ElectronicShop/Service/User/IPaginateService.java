package ElectronicShop.Service.User;

import org.springframework.stereotype.Service;

import ElectronicShop.Dto.PaginateDto;

@Service
public interface IPaginateService {

	public PaginateDto getInfoPaginate(int totalData, int limit, int currentPage);
}
