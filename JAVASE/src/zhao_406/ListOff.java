package zhao_406;

public class ListOff implements Runnable{

	private int count = 100;
	private int taskCount = 0;
	private final int id = taskCount++; 
	private ListOff(){}
	private ListOff(int countdown){
		this.count= countdown;
	}
	public String staues(){
		return "#"+id+(count>0? count:"liftOff");
	}
	@Override
	public void run() {
		while(count-- >0){
			System.out.println(staues());
			//线程调度器。将线程所有权转移
			Thread.yield();
		}
		
		
	}

}
