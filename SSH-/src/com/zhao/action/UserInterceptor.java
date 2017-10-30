package com.zhao.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class UserInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// 获取代理对象，然后获取方法
		String method = invocation.getProxy().getMethod();
		// 得到actioncontext对象
		ActionContext ac = invocation.getInvocationContext();
		// 得到session对象，然后获取用户信息
		Object object = ac.getSession().get("adminInFo");
		
		if("login".equals(method) || "list".equals(method)){
			//返回是证明已经登陆或者浏览证明已经完成验证用户项
			//所以invock（）放行
			return invocation.invoke();
		}else{
			if(object == null){
				return "login";
			}else{
				
				return invocation.invoke();
			}
		}
	}

}
