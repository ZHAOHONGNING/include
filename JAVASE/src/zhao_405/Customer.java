package zhao_405;

public class Customer implements Runnable {
//       利用构造器的特性将多个任务对应一个资源
	Res r; 
	public Customer(Res r) {
			this.r=r;
		}
	@Override
	public void run() {
	while(true){
		
		try {
			r.get();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
	} 

}
