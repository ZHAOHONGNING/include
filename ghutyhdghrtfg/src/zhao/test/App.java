package zhao.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class App {
	ApplicationContext context =
			//获取方式是直接获取类路径下的
			new ClassPathXmlApplicationContext("bean.xml");

	@SuppressWarnings("resource")
	@Test
	public void test() {
		
		
		
	}
}
