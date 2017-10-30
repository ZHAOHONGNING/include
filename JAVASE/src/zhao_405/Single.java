package zhao_405;

public class Single {

	private static Single s = null;

	private Single() {
		// TODO Auto-generated constructor stub
	}

	public static  Single getInstance() {
		if (s == null) {
			synchronized(Single.class){
			if (s == null) {
					return s = new Single();
				}
			}
		}
		return s;
	}
}
