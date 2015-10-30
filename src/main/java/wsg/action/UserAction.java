package wsg.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import wsg.model.User;
import wsg.model.easyui.Json;
import wsg.service.UserServiceI;

@Namespace("/")
@Action("UserAction")
@Results( {   
//	@Result(name="admin",location="/admin/UserAuthAction!findUncheckedList.action",type="redirectAction"),
//	@Result(name="Login",location="/teacher_jsp/teacher_index.jsp",type="redirect"),
//	@Result(name="getUserVisitCard",location="/user/userVisitingCard.jsp"), 
	@Result(name="logOut",location="/WEB-INF/login.jsp") 
})
/**
 * 用户业务逻辑类
 * 
 * @author WSG
 *
 */
public class UserAction extends BaseAction<User> {
	
	private UserServiceI userServiceI;
	private Json json;
	private User user;
	
	//用户登录
	public void login() {		
		json = new Json();
		try {
			if (userServiceI.userExistByloginName(user.getLoginName())) {
				user = userServiceI.login(user);
				if (user != null) {
					this.saveSessionForUser();
					json.setSuccess(true);
					json.setMsg("登录成功！");
					json.setObj(new User(user.getId(),user.getLoginName()));
				} else {
					json.setMsg("密码错误！");
				}
			} else {
				json.setMsg("登录名不存在！");
			}
		} catch (Exception e) {
			e.printStackTrace();
			json.setMsg("登录失败！");
		}
		super.writJson(json);
	}
	
	//注册新用户
	public void addUser() {
		json = new Json();
		try {
			json.setMsg("功能已关闭！");
//			if (!userServiceI.userExistByloginName(user.getLoginName())) {
//				user.setNickName(user.getLoginName());
//				user = userServiceI.addUser(user);
//				this.saveSessionForUser();
//				json.setSuccess(true);
//				json.setMsg("注册成功！");
//				json.setObj(new User(user.getId(),user.getLoginName()));
//			} else {
//				json.setMsg("登录名已存在！");
//			}			
		} catch (Exception e) {
			e.printStackTrace();
			json.setMsg("注册失败！");
		}
		super.writJson(json);
	}
	
	//注销 URL网联
	public String logOut() {
		this.removeSessionForUser();
		return "logOut";
	}
	
	//注销
	public void logout() {
		json = new Json();
		try {
			this.removeSessionForUser();
			json.setSuccess(true);
			json.setMsg("退出成功！");
			
		} catch (Exception e) {
			e.printStackTrace();
			json.setMsg("退出失败！");
		}
		super.writJson(json);		
	}
	
	/**
	 * save Session 记录用户登录状态
	 */
	private void saveSessionForUser() {
		getSession().setAttribute("user", user);
		getSession().setAttribute("userId", user.getId());
		getSession().setAttribute("loginName", user.getLoginName());
		getSession().setAttribute("power", user.getPower());
	}
	
	/**
	 * remove Session 删除用户登录状态
	 */
	private void removeSessionForUser() {
		getSession().removeAttribute("user");
		getSession().removeAttribute("userId");
		getSession().removeAttribute("loginName");
		getSession().removeAttribute("power");
	}
	
	public UserServiceI getUserServiceI() {
		return userServiceI;
	}
	@Autowired
	public void setUserServiceI(UserServiceI userServiceI) {
		this.userServiceI = userServiceI;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
