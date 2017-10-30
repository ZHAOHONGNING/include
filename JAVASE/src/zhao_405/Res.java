package zhao_405;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

//对资源的描述，及其方法
public class Res {
	private String name;
	private int count = 1;
	private boolean flag;
	//创建新锁
	Lock lock = new ReentrantLock();
    //从创建lock和condition绑定的监视器
	//生产者监视器
	Condition produnt = lock.newCondition();
	//消费者监视器
	Condition customer = lock.newCondition();
	
	// 方法一的描述
	public void set(String name) throws InterruptedException {
		// 获取锁
		lock.lock();
		try {
			while (flag) {
				//冻结生产者，因为一个锁上允许有多个
				//监视器，监视器和锁绑定这里绑定的是生产者
				//所以冻结生产者
				produnt.await();
			}
			this.name = name + ",,,,,,,," + count;
			count++;
			System.out.println(Thread.currentThread().getName() + "生产者" + this.name);
			// 更改标记,将标记改成true
			flag = true;
			// 唤醒消费者（同理）
			customer.signal();
			// 释放锁
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			lock.unlock();
		}
	}
	// 方法二的描述
	public void get() throws InterruptedException {
		lock.lock();
		try {
			// 这边情况和生产者相反
			while (!flag) {
				produnt.await();
			}
			System.out.println(Thread.currentThread().getName() + "消费者" + this.name);
			flag = false;
			customer.signal();
		} finally {
			lock.unlock();
		}
	}

}
