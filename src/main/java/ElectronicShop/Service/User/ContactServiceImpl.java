package ElectronicShop.Service.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectronicShop.Dao.ContactDao;
import ElectronicShop.Entity.Contact;

@Service
public class ContactServiceImpl implements IContactService{

	@Autowired
	ContactDao contactDao = new ContactDao();
	@Override
	public int addContact(Contact contact) {
		// TODO Auto-generated method stub
		return contactDao.addContact(contact);
	}

}
