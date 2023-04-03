package ElectronicShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import ElectronicShop.Entity.Users;

@Service
public interface IAccountService {

	public int addAccount(Users user);

	public Users checkAccount(Users user);
	
	public int addAccountUser(Users user);
	
	public List<Users> getAllUser();
	
	public int deleteUserByID(int id);
	
	public Users checkExitsUser(Users user);
}
