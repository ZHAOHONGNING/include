package zhao_311;

public class Student implements Runnable{
	private String name;
	public Student(String name) {
		this.name = name;
	}
	//最重要的覆盖父类run（）
	
	public void show() {
		for (int i = 0; i < 12; i++) {
			System.out.println("....." + i);
		}
	}
	public static void main(String[] args) {
		Student s = new Student("dihfdoi");
		Thread t1 = new Thread(s);
		//Thread类中带有这种可以添加对象的构造器
		//这样将对象传入thread类中
		Thread t2 = new Thread(s);
		Thread t3 = new Thread(s);
		Thread t4 = new Thread(s);
		t1.start();
		t2.start();
		t3.start();
		t4.start();
		
	}
	@Override
	public void run() {
		show();
	}

}
