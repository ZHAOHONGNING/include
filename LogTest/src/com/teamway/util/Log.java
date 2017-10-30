package com.teamway.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.ConsoleHandler;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Log {

	// 创建对象
	private static Logger logger = null;
	// 自定义等级
	// Level lev = Level.ALL;
	// 定义文件名字格式E:\DoyoGames\Games\10450369

	// 自定义格式
	MyFormat myformat = new MyFormat();
	// 自定义日志名字
	SimpleDateFormat sdf = new SimpleDateFormat("yyyMMdd");
	Logger log = Logger.getLogger(Log.class.getName());

	/*
	 * 日志等级： EMERG 8 系统不可用 ALERT 7 警报，事情已经发生 CRIT 6 // 预防，事件就要发生 ERR 5 // 普通错误
	 * WARNING 6 // 警告 NOTICE 3 // 提醒信息 INFO 2 // 通知信息 DEBUG 1 // 调试类日志 NONE 0
	 * // 不记录日志
	 */

	/*
	 * 日志类 日志记录格式: [2017-10-01 08:00:01][INFO] ...... 每个日志文件超过规定大小后，需要产生新日志文件。
	 * 老日志文件重新命名，在文件名后添加当前时间。 例如alarm.log.20171023_115403.log
	 * 当日志存放目录中文件超出预定大小后，需要删除最早日志。
	 */
	/*
	 * 初始化日志 path - 日志存放目录 logName - 日志文件名 level - 日志等级，后面writeLog中小于此等级的日志都不用记录
	 * totalSize - 日志目录中所有日志大小 fileSize - 每个日志文件大小
	 */
	public boolean initLog(String path, String logName, Level level, int totalSize, int fileSize)
			throws SecurityException, IOException {
		StringBuffer sb = new StringBuffer();

		File file = new File(path, logName);
		if (!file.exists()) {
			file.createNewFile();
		}
		String absolutePath = file.getAbsolutePath();
		file.getName();
		FileHandler filehandler = new FileHandler(absolutePath);
		System.out.println(file.getName());
		filehandler.setFormatter(myformat);
		log.addHandler(filehandler);

		long filelong = file.length();
		int intfile = (int) filelong;
		if (intfile >= fileSize) {
			// file.renameTo(arg0
			File file1 = new File(path, "rr");
			FileHandler filehandler1 = new FileHandler(file1.getAbsolutePath());
			log.addHandler(filehandler1);
			if (!file1.exists()) {
				file.createNewFile();

			}

		}
		return true;
	}

	/*
	 * 写日志 level - 本条日志等级 log - 日志信息，注意每条日志后面需要换行
	 */
	public void writeLog(Level level, String... logs) {
		for (String string : logs) {

			log.log(level, string);
		}
	}

	// 重新设置日志文件等级
	public void resetLevel(Level level) {

		logger.setLevel(level);
	}

	// 设置是否在控制台输出
	public void setSonsoleOutput(boolean b) {
		if (b) {
			ConsoleHandler handler = new ConsoleHandler();
			log.addHandler(handler);
		} else {

			// 用filehandler初始化的logger为
		}
	}
}
