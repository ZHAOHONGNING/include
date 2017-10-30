package com.teamway.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Date;

public class dghfbfdshrfh {
	public static void main(String[] args) throws IOException {
		File file2 = new File("E:\\DoyoGames\\Games\\hu.log");
		System.out.println(file2.getName());
		FileReader reader = new FileReader(file2);
		BufferedReader br = new BufferedReader(reader);
		String str = null;
		while ((str = br.readLine()) != null) {
			System.out.println(str); // 输出打印exercise.txt文件中的数据
		}
	}
}
