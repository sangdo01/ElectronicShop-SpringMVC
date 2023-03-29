package ElectronicShop.Service.User;

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
	public boolean checkAccount(Users user) {
		String pass_input = user.getPassword();
		user = usersDao.getUserByAccount(user);
		if (user != null) {
			if (BCrypt.checkpw(pass_input, user.getPassword())) {
				return true;
			} else {
				return false;
			}
		}
		return false;
	}

}
