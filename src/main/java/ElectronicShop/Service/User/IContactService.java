package ElectronicShop.Service.User;

import org.springframework.stereotype.Service;

import ElectronicShop.Entity.Contact;

@Service
public interface IContactService {

	public int addContact(Contact contact);
	
}
