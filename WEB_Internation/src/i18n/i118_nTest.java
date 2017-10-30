package i18n;

import java.util.Locale;

import org.junit.Test;

public class i118_nTest {

	@Test
	public void test() {
		Locale default1 = Locale.getDefault();
		System.out.println(default1);
		Locale canadaFrench = Locale.CANADA_FRENCH;
		System.out.println(canadaFrench);
	}

}
