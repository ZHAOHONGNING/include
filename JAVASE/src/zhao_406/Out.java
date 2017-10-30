package zhao_406;

public class Out  implements Runnable{
	Resonrse r;
	public Out(Resonrse r) {
		this.r = r;// TODO Auto-generated constructor stub
	}
	@Override
	public void run() {
		// TODO Auto-generated method stub
		r.out();
	}

}
