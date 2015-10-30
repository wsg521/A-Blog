package wsg.service;

import java.util.List;
import wsg.model.User;

public interface UserServiceI extends BaseServiceI<User> {
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	public User login(User user);
	/**
	 * 添加新用户
	 * @param user
	 * @return
	 */
	public User addUser(User user);
	/**
	 * 根据登录名判断用户是否存在
	 * @param loginName
	 * @return
	 */
	public boolean userExistByloginName(String loginName);
}
