package teamway.shenz;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;

public class HUHU {
	public static void main(String[] args) {

		//写入文件
		String path="C:\\Users\\赵洪宁\\Desktop\\hu";
		File bing=new File(path);
		try {
			FileOutputStream fps=new FileOutputStream(bing);
			try {
				OutputStreamWriter osw=new OutputStreamWriter(fps, "utf-8");
				String msg="我有神经病";
				byte[] temp=msg.getBytes();
				try {
					osw.write(temp);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
