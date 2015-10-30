package wsg.action;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.hibernate.annotations.common.reflection.ReflectionUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import wsg.service.BaseServiceI;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;


@ParentPackage("basePackage")
@Namespace("/")
@Action(value="baseAction")
public class BaseAction<T> extends ActionSupport{
	/**
	 * Logger for this class
	 */
//	public static final Logger logger = Logger.getLogger(BaseAction.class);
//	public void test() throws Exception{
//		System.out.println("?base action");	
//		Teacher teacher = new Teacher("2testAction");
//	
//		service.save((T) teacher);
//		System.out.println("?base action");	
//
//	}
	
	/**
	 * 获得request
	 * 
	 * @return
	 */
	public HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}
	/**
	 * 获得response
	 * 
	 * @return
	 */
	public HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}
	/**
	 * 获得session
	 * 
	 * @return
	 */
	public HttpSession getSession() {
		return ServletActionContext.getRequest().getSession();
	}
	/**
	 * 获取application
	 * 
	 * @return
	 */
	public ServletContext getApplication() {
		return ServletActionContext.getServletContext();
	}
	
	/**
	 * 将对象转换成JSON字符串，并响应回前台
	 * @param object
	 */
	public void writJson(Object object) {
		try {
			getResponse().setContentType("text/html;charset=utf-8");
			getResponse().getWriter().write(JSON.toJSONStringWithDateFormat(object, "yyyy-MM-dd HH:mm:ss"));
			getResponse().getWriter().flush();
			getResponse().getWriter().close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
