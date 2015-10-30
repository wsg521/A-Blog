package wsg.util;

import javax.servlet.http.HttpSession;

import wsg.model.easyui.Json;

public class Wsg {
	
	/**
	 * 根据当前用户返回权限数据
	 * json.success 为true表示权限通过，为false表示权限验证失败
	 * @param session
	 * @return Json
	 */
	public static Json VerificationAuthority(HttpSession session) {
		Json json = new Json();
		if (session.getAttribute("user") == null) 
			json.setMsg("权限不足!");
		else
			json.setSuccess(true);
		return json;
	}
	
}
