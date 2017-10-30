package zhao_405;

public class Produnt implements Runnable {
	Res r; 
	public Produnt(Res r) {
			this.r=r;
		}
	@Override
	public void run() {
		while(true){
			
			try {
				r.set("鸡肉");
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
