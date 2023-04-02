package ElectronicShop.Service.User;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dao.UsersDao;
import ElectronicShop.Entity.Users;

@Service
public class AccountServiceImpl implements IAccountService {

	@Autowired
	UsersDao usersDao = new UsersDao();

	@Override
	public int addAccount(Users user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		return usersDao.addAccount(user);

	}

	@Override
	public Users checkAccount(Users user) {
		String pass_input = user.getPassword();
		user = usersDao.getUserByAccount(user);
		if (user != null) {
			if (BCrypt.checkpw(pass_input, user.getPassword())) {
				return user;
			} else {
				return null;
			}
		}
		return null;
	}

	@Override
	public int addAccountUser(Users user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		return usersDao.addAccountUser(user);
	}

	@Override
	public List<Users> getAllUser() {
		return usersDao.getAllUser();
	}

	@Override
	public int deleteUserByID(int id) {
		return usersDao.deleteUsrByID(id);
	}

}
