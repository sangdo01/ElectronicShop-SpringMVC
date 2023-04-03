package ElectronicShop.Entity;

public class Contact {

	private int id;
	private String email;
	private String name;
	private String content;

	public Contact() {
		super();
	}

	public Contact(int id, String email, String name, String content) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.content = content;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
