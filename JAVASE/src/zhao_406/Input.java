package zhao_406;


public class Input implements Runnable {

	Resonrse r;
	public Input(Resonrse r) {
		this.r = r;// TODO Auto-generated constructor stub
	}
	@Override
	public void run() {
	
		r.in();
	}

}
