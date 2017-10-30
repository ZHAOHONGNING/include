package zhao_407;

import java.util.Comparator;

import zhao_408.Person;

public class ComparatorByname implements Comparator<Person>{

	@Override
	public int compare(Person o1, Person o2) {
		int to = o1.getName().compareTo(o2.getName());
		return to==0?o1.getAge()-o2.getAge():to;
	}

}
