package zhao_405;

import zhao_312.Person;

public class Bank implements Runnable {
	Object obj = new Object();
	 int sum;
	public void add(int a ){

		System.out.println(	sum+=a);
	}

	@Override
	public void run() {
//		synchronized (obj) {
//			try {
//				Thread.sleep(10);
//			} catch (InterruptedException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			for(int i=1;i<4;i++){
				add(100);
			//}
		}
	}
public static void main(String[] args) {
	Bank b = new Bank(); 
	Thread t1 = new Thread(b);
	Thread t2 = new Thread(b);
	t1.start();
	t2.start();
}
}
