package zhao_419;

public class Hungry {
	//先初始化对象
	private static Hungry hungry=new Hungry();
	//直接创建对象
	private Hungry(){
		
	}
	public static Hungry getInstance(){
		return hungry;
	}
}
