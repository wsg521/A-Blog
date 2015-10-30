package wsg.action;

import java.io.IOException;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

import wsg.model.easyui.Json;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthenticationInterceptor extends AbstractInterceptor {
	
	Map<String, Object> sessionValues;
	Integer userId;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		try{
			sessionValues = invocation.getInvocationContext().getSession();
			userId = (Integer) sessionValues.get("userId");
			if (userId == null) {
//				writJson();
				return "login";
			} else {
				return invocation.invoke();   //否则，正常运行
			}
		} catch (Exception e) {
			return "login";
		}		
//		if (user == null) {        //如果为空
//			ActionContext.getContext().put("user", "4"); //提示请登录
//			return "login";      //则返回登录界面
//		}
//		HttpServletRequest request = ServletActionContext.getRequest();
//		String url = request.getRequestURL().toString();
//		if (url.endsWith("tea.action")) {
//			System.out.println(request.getRequestURL());
//			System.out.println(request.getRequestURI());
//		}
//		return invocation.invoke();   //否则，正常运行
	}
	
	/**
	 * 将对象转换成JSON字符串，并响应回前台
	 * @param object
	 */
	public void writJson() {
		try {
			Json object = new Json();
			object.setMsg("GO_LOGIN");
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write(JSON.toJSONStringWithDateFormat(object, "yyyy-MM-dd HH:mm:ss"));
			response.getWriter().flush();
			response.getWriter().close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}


