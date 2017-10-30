package File;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UpLoadServlet
 */
public class UpLoadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         //创建工厂实例
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		//创建解析器实例
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);
		//解析请求
		try {
			List<FileItem> parseRequest = servletFileUpload.parseRequest(request);
			for (FileItem fileItem : parseRequest) {
				/*
				 * 7个核心方法：
				 * isFormField()：用来判断是否是一个普通表单项
				 * getFieldName()：用来获取表单中的name属性值
				 * getString(String encoding)：获取文本框中输入的文本值，方法中传入一个字符集
				 * 
				 * getContentType()：用来获取文件的类型，是一个MIME值
				 * getName()：用来获取文件名
				 * getSize()：用来获取文件的大小，单位是字节
				 * write(File file)：用来将文件写到服务器中
				 */
				if(fileItem.isFormField()){
					//证明是普通的表单项
					//获取表单中的name属性值
					String fieldName = fileItem.getFieldName();
					String string = fileItem.getString("UTF-8");
					
				}else{
					String contentType = fileItem.getContentType();
					String name = fileItem.getName();
					long size = fileItem.getSize();
					file.write
					
				}
			}
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
