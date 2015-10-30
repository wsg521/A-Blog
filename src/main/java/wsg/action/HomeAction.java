package wsg.action;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.sun.jdi.Value;

import wsg.model.Blog;
import wsg.model.Home;
import wsg.model.easyui.Json;
import wsg.service.BlogServiceI;
import wsg.service.HomeServiceI;

@Namespace("/")
@Action("HomeAction")
@InterceptorRefs({ 
	@InterceptorRef(value = "ATIStack")
})
@Results( {   
//	@Result(name="admin",location="/admin/UserAuthAction!findUncheckedList.action",type="redirectAction"),
//	@Result(name="Login",location="/teacher_jsp/teacher_index.jsp",type="redirect"),
	@Result(name="home",location="/WEB-INF/home.jsp"),
	@Result(name="findAll",location="/WEB-INF/homeList.jsp"),
	@Result(name="blogContent",location="/WEB-INF/blogContent.jsp"),
	@Result(name="addHome",location="/WEB-INF/addHome.jsp")
})
public class HomeAction extends BaseAction<Home> {
	
	private HomeServiceI homeServiceI;
	private BlogServiceI blogServiceI;
	private List<Blog> blogList;
	private List<Home> homeList;
	private Home home;
	
	//后台管理数据
	public String findAll() {
		homeList = homeServiceI.findAllHome();
		return "findAll";
	}
	
	public String findBlogContent() {
		home = homeServiceI.getById(home.getId());
		return "blogContent";
	}
	
	public void addHome() {
		Json json = new Json();
		try {
			if (!homeServiceI.existByTitle(home.getTitle())) {
				home.setCreateTime(new Timestamp(new Date().getTime()));
				homeServiceI.addHome(home);
				json.setSuccess(true);
				json.setMsg("添加成功！");
			} else {
				json.setMsg("该条目已被占用！");
			}
		} catch (Exception e) {
			e.printStackTrace();
			json.setMsg("添加失败！");
		} finally {
			super.writJson(json);
		}
	}
	
	public String getHomeView() {
		try {
			home = homeServiceI.getHomeById(home.getId());
			blogList = blogServiceI.findAllIdName();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "home";
	}
	
	public void updateHome() {
		Json json = new Json();
		try {
			home.setUpdateTime(new Timestamp(new Date().getTime()));
			homeServiceI.updateHome(home);
			json.setSuccess(true);
			json.setMsg("修改成功！");
		} catch (Exception e) {
			e.printStackTrace();
			json.setMsg("修改失败！");
		} finally {
			super.writJson(json);
		}
	}
	
	public HomeServiceI getHomeServiceI() {
		return homeServiceI;
	}
	@Autowired
	public void setHomeServiceI(HomeServiceI homeServiceI) {
		this.homeServiceI = homeServiceI;
	}
	public BlogServiceI getBlogServiceI() {
		return blogServiceI;
	}
	@Autowired
	public void setBlogServiceI(BlogServiceI blogServiceI) {
		this.blogServiceI = blogServiceI;
	}
	public List<Blog> getBlogList() {
		return blogList;
	}
	public void setBlogList(List<Blog> blogList) {
		this.blogList = blogList;
	}
	public Home getHome() {
		return home;
	}
	public void setHome(Home home) {
		this.home = home;
	}
	public List<Home> getHomeList() {
		return homeList;
	}
	public void setHomeList(List<Home> homeList) {
		this.homeList = homeList;
	}
}
