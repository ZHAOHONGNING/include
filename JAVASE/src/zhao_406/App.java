package zhao_406;

import static org.junit.Assert.*;

import org.junit.Test;

public class App {

	@Test
	public void test() {
		Resonrse r = new Resonrse();
		Input in = new Input(r);
		Out ou = new Out(r);
		new Thread(ou).start();
		new Thread(ou).start();
		new Thread(in).start();
		new Thread(in).start();
		new Thread(in).start();
	}

}
