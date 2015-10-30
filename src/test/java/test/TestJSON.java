package test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSON;

import wsg.model.User;
import wsg.model.easyui.Json;

public class TestJSON {
	
	public static void main(String[] args) {
		
		List<User> users = new ArrayList<User>();
		
		User user = new User();
		user.setAge(23);
		user.setSex(true);
		user.setLoginName("wsg");
		
		users.add(user);
		
		User user2 = new User();
		user2.setAge(24);
		user2.setSex(false);
		user2.setLoginName("zzti");
		
		users.add(user2);
		
		Map<String, User> map = new HashMap<String, User>();
		map.put("wsg", user);
		map.put("zzti", user2);
		
		Json json = new Json();
		json.setMsg("JSON");
		json.setSuccess(true);
		
		json.setObj(user);
		System.out.println(JSON.toJSONStringWithDateFormat(json, "yyyy-MM-dd HH:mm:ss"));
		
		json.setObj(users);
		System.out.println(JSON.toJSONStringWithDateFormat(json, "yyyy-MM-dd HH:mm:ss"));
		
		json.setObj(map);
		System.out.println(JSON.toJSONStringWithDateFormat(json, "yyyy-MM-dd HH:mm:ss"));
		
		Json json2 = new Json();
		json2.setMsg("JSON");
		json2.setSuccess(true);
		json2.setObj(json2);
		System.out.println(JSON.toJSONStringWithDateFormat(json2, "yyyy-MM-dd HH:mm:ss"));
	}
	
}
