package com.teamway.util;


public class LogTest {
	public static void main(String[] args) throws Exception {
		
		String path="E:\\DoyoGames\\Games\\";
		ILOG log=new ILOG();
		log.initLog(path, "huhu.log",2, 1024*1024*2, 1024*1024);
		for(int i=0;i<50000;i++) {
			
			log.writeLog(4,"日志等级： EMERG 8 系统不可用 ALERT 7 警报，事情已经发生 CRIT 6 // 预防，事件就要发生 ERR 5 // 普通错误\r\n" + 
					"	 * WARNING 6 // 警告 NOTICE 3 // 提醒信息 INFO 2 // 通知信息 DEBUG 1 // 调试类日志 NONE 0\r\n" + 
					"	 * // 不记录日志\r\n" + 
					"	 */\r\n" + 
					"\r\n" + 
					"	/*\r\n" + 
					"	 * 日志类 日志记录格式: [2017-10-01 08:00:01][INFO] ...... 每个日志文件超过规定大小后，需要产生新日志文件。\r\n" + 
					"	 * 老日志文件重新命名，在文件名后添加当前时间。 例如alarm.log.20171023_115403.log\r\n" + 
					"	 * 当日志存放目录中文件超出预定大小后，需要删除最早日志。\r\n" + 
					"	 */\r\n" + 
					"	/*\r\n" + 
					"	 * 初始化日志 path - 日志存放目录 logName - 日志文件名 level - 日志等级，后面writeLog中小于此等级的日志都不用记录\r\n" + 
					"	 * totalSize - 日志目录中所有日志大小 fileSize - 每个日志文件大小\r\n" + 
					"	 */" );
			
		}
	}

}