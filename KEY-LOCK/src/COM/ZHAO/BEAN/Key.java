package COM.ZHAO.BEAN;

public class Key {

	private Integer id;
	private String keyname;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getKeyname() {
		return keyname;
	}
	public void setKeyname(String keyname) {
		this.keyname = keyname;
	}
	@Override
	public String toString() {
		return "Key [id=" + id + ", keyname=" + keyname + "]";
	}
	public Key(Integer id, String keyname) {
		super();
		this.id = id;
		this.keyname = keyname;
	}
	public Key() {
		super();
	}
	
}
