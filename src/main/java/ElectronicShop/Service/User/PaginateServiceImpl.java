package ElectronicShop.Service.User;

import org.springframework.stereotype.Service;

import ElectronicShop.Dto.PaginateDto;

@Service
public class PaginateServiceImpl {

	public PaginateDto getInfoPaginate(int totalData, int limit, int currentPage) {
		PaginateDto paginate = new PaginateDto();
		paginate.setLimit(limit);
		paginate.setTotalPage(setInfoTotalPage(totalData, limit));
		paginate.setCurrentPage(checkCurrentPage(currentPage, paginate.getTotalPage()));

		int start = findStart(paginate.getCurrentPage(), limit);
		paginate.setStart(start);
		int end = findEnd(paginate.getStart(), limit, totalData);
		paginate.setCurrentPage(end);
		return paginate;

	}

	private int findEnd(int start, int limit, int totalData) {
		return start + limit > totalData ? totalData : (start + limit) - 1;
	}

	private int findStart(int currentPage, int limit) {
		return ((currentPage - 1) * limit) + 1;
	}

	private int setInfoTotalPage(int totalData, int limit) {
		int totalPage = 0;
		totalPage = totalData / limit;
		totalPage = totalPage * limit < totalData ? totalPage + 1 : totalPage;
		return totalPage;
	}

	private int checkCurrentPage(int currentPage, int totalPage) {
		if (currentPage < 1) {
			return 1;
		}
		if (currentPage > totalPage) {
			return totalPage;
		}
		return currentPage;
	}
}
