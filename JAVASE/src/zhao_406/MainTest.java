package zhao_406;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class MainTest {
	public static void main(String[] args) {
		List list = new ArrayList();
		list.add("ghrfhg");
		list.add("ghg");
		list.add("g");
		list.add("ghg");
		list.get(2);
		Iterator iterator = list.iterator();
		while(iterator.hasNext()){
			System.out.println(iterator.next());
		}
		
	}
}
