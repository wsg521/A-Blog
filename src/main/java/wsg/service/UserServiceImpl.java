package wsg.service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.crypto.EncryptedPrivateKeyInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wsg.dao.BaseDaoI;
import wsg.model.User;
import wsg.util.MD5Util;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserServiceI{
	
	@Autowired
	private BaseDaoI<User> userDaoI;
	private Map<String, Object> params;
	private String hql;
	
	@Override
	public User login(User user) {
		params = new HashMap<String, Object>();		
		hql = "from User u where u.loginName = :loginName and u.pwd = :pwd";
		params.put("loginName", user.getLoginName());
		params.put("pwd", MD5Util.md5(user.getPwd()));		
		return userDaoI.getByHql(hql, params);
	}

	@Override
	public User addUser(User user) {
		user.setCreateTime(new Timestamp(new Date().getTime()));
		user.setPwd(MD5Util.md5(user.getPwd()));
		userDaoI.save(user);
		return user;
	}

	@Override
	public boolean userExistByloginName(String loginName) {
		params = new HashMap<String, Object>();
		params.put("loginName", loginName);
		hql = "select count(u) from User u where u.loginName = :loginName";
		if (userDaoI.count(hql, params).intValue() == 1) 
			return true;
		return false;
	}
}
