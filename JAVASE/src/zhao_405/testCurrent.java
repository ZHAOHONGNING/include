package zhao_405;

import static org.junit.Assert.*;

import org.junit.Test;

public class testCurrent {

	@Test
	public void test() {
		//c创建资源
		Res s= new Res();
		//创建任务
		Produnt p = new Produnt(s);
		Customer c = new Customer(s);
		//开启线程
		new Thread(p).start();
		new Thread(p).start();
		new Thread(p).start();
		new Thread(p).start();
		new Thread(c).start();
		new Thread(c).start();
		new Thread(c).start();
		new Thread(c).start();
	}

}
