package COM.ZHAO.BEAN;

public class Lock {

	private Integer id;
	private String lock;
	private Key key;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLock() {
		return lock;
	}
	public void setLock(String lock) {
		this.lock = lock;
	}
	public Key getKey() {
		return key;
	}
	public void setKey(Key key) {
		this.key = key;
	}
	@Override
	public String toString() {
		return "Lock [id=" + id + ", lock=" + lock + ", key=" + key + "]";
	}
	public Lock(Integer id, String lock, Key key) {
		super();
		this.id = id;
		this.lock = lock;
		this.key = key;
	}
	public Lock() {
		super();
	}
	
}
