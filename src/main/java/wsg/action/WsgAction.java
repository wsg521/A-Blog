package wsg.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import wsg.service.BlogServiceI;
import wsg.service.TagServiceI;

@Namespace("/")
@Action("wsg")
@Results( {   
//	@Result(name="admin",location="/admin/UserAuthAction!findUncheckedList.action",type="redirectAction"),
//	@Result(name="Login",location="/teacher_jsp/teacher_index.jsp",type="redirect"),
	@Result(name="login",location="/WEB-INF/login.jsp"),
	@Result(name="index",location="/WEB-INF/index.jsp"),
	@Result(name="writeBlog",location="/WEB-INF/writeBlog.jsp"),
	@Result(name="addHome",location="/WEB-INF/addHome.jsp"),
	@Result(name="writeLife",location="/WEB-INF/writeLife.jsp")
})
/**
 * 管理网站综合服务
 * @author WSG
 *
 */
public class WsgAction extends BaseAction {
	
	private TagServiceI tagServiceI;
	private BlogServiceI blogServiceI;
	private String path;
	
	/**
	 * 管理登录入口
	 */
	@Override
	public String execute() throws Exception {
		
//		System.out.println(getRequest().getRemoteAddr());
//		System.out.println(getRequest().getRemoteHost());
//		System.out.println(getRequest().getRemotePort());
//		System.out.println(getRequest().getRemoteUser());
		
		if (getSession().getAttribute("user") != null)
			return "index";
		else
			return "login";
	}
	
	public String jV() {
		if (getSession().getAttribute("user") != null) {
			if (path.equals("writeBlog")) 
				getRequest().setAttribute("tagList", tagServiceI.getAllTagId());
			if (path.equals("addHome"))
				getRequest().setAttribute("blogList", blogServiceI.findAllIdName());
			return path;
		}
		return "login";
	}

	public TagServiceI getTagServiceI() {
		return tagServiceI;
	}
	@Autowired
	public void setTagServiceI(TagServiceI tagServiceI) {
		this.tagServiceI = tagServiceI;
	}
	public BlogServiceI getBlogServiceI() {
		return blogServiceI;
	}
	@Autowired
	public void setBlogServiceI(BlogServiceI blogServiceI) {
		this.blogServiceI = blogServiceI;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}	
}
