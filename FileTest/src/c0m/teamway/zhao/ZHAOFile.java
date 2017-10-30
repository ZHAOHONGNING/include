package c0m.teamway.zhao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Date;

public class ZHAOFile {
	public static void main(String[] args) {

		String path = "E:\\QMDownload";
		File file = new File(path);
		// if(!file.isDirectory()){
		// try {
		// file.createNewFile();
		// } catch (IOException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		//
		// }
		if (!file.exists()) {
			file.mkdirs();
		}
		String[] list = file.list();
		for (String lists : list) {
			System.out.println(lists + "String的list");
		}
		File[] files = file.listFiles();
		for (File file2 : files) {
			System.out.println("file的文件名称" + file2);
		}
		// System.out.println(files+"wocao"+listFiles);
		System.out.println(new Date(file.lastModified()));
		System.out.println(file.getName());
		System.out.println(file.getAbsolutePath());
	}

	// 写一个删除文件夹的算法
	public void deleteFile(String path) {
		File file = new File(path);
		if (!file.exists()) {
			return;
		}
		if (file.isFile()) {
			file.delete();
		} else if (file.isDirectory()) {
			File[] files = file.listFiles();
			for (File file2 : files) {
				deleteFile(path);
			}
			file.delete();
		}
	}

	// 写一个读取文件的方法
	public String getFile(File file) {
		StringBuffer sb = new StringBuffer();

		try {
			FileInputStream fis = new FileInputStream(file);
			if (!file.isFile() || !file.exists()) {
				System.out.println("ladaoba");
			}
			try {
				byte[] temp = new byte[1024];
				// 将文件中的数据读取到byte数组中，
				// 然后byte数组再添加到字符缓冲区stringbuffer中
				while (fis.read(temp) != -1) {
					// new String(byte);把byte数组转换成Sring
					sb.append(new String(temp));
				}
				fis.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return sb.toString();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	// 读取文件练手的
	public String getFileResources(String path) throws IOException {
		File file = new File(path);
		StringBuffer sb = new StringBuffer();
		FileInputStream fis = new FileInputStream(file);
		byte[] temp = new byte[890];
		if (!file.exists() || !file.isFile()) {
			System.out.println("gaiye");
		}
		while (fis.read(temp) != -1) {
			sb.append(new String(temp));
		}
		fis.close();
		return sb.toString();
	}
}
