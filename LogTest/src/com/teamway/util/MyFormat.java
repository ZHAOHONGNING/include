package com.teamway.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Formatter;
import java.util.logging.Handler;
import java.util.logging.LogRecord;

public class MyFormat extends Formatter {

	private static final String DATE_PATTERN_FULL_ = "yyyy-MM-dd:mm:ss";

	@Override
	public String format(LogRecord record) {
		return "[" + getCurrentDateStr(DATE_PATTERN_FULL_) + "-Level:" + record.getLevel().getName() + "]-"
				+ record.getMessage() + "\n";
	}

	public static String getCurrentDateStr(String pattern) {
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat(pattern);

		return df.format(date);
	}
}