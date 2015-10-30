package wsg.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;

@Namespace("/")
@Action("testAction")
/**
 * 测试action
 * @author WSG
 *
 */
public class TestAction extends BaseAction {
	
	public void easyuiComBox() {
		List a = new ArrayList();
		Map m = new HashMap<String, Object>();
		m.put("id", 1);
		m.put("text", "qq");
		m.put("desc", "qqdsc");
		a.add(m);
		super.writJson(a);
	}
	
}
