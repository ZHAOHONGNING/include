package bookStore.bean;

public class User {
	//这个类是为了封装对象
	private Integer id;
	private String password;
	private String username;
	private String email;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "users [id=" + id + ", password=" + password + ", username=" + username + ", email=" + email + "]";
	}
	public User(Integer id, String password, String username, String email) {
		super();
		this.id = id;
		this.password = password;
		this.username = username;
		this.email = email;
	}
	public User() {
		super();
	}
	

}
