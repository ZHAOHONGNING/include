package zhao_406;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class Resonrse {
	private String name;
	Resonrse r = new Resonrse();
	Lock lock = new ReentrantLock();
	Condition con = lock.newCondition();

	public void in() {
		int x = 0;
			lock.lock();
			while (true) {
				try {
					con.await();
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				try {
					if (x == 0) {
						r.setName("manmanmanmanam");
					}else{
						r.setName("nvnvnvnv");
					}
					x=(x+1)%2;
					System.out.println(Thread.currentThread().getName()+"88888"+name);
					con.signal();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {
					lock.unlock();
				}
			}
		}
	public void out(){
		lock.lock();
		try {
			try {
				con.await();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(Thread.currentThread().getName()+"88888"+name);
			con.signal();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			lock.unlock();
		}
	}
	public void setName(String name) {
		this.name = name;
	}
}
