package wsg.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import wsg.model.Tag;
import wsg.model.easyui.Json;
import wsg.service.TagServiceI;

@Namespace("/")
@Action("TagAction")
@InterceptorRefs({ 
	@InterceptorRef(value = "ATIStack") 
})
@Results( {   
//	@Result(name="admin",location="/admin/UserAuthAction!findUncheckedList.action",type="redirectAction"),
//	@Result(name="Login",location="/teacher_jsp/teacher_index.jsp",type="redirect"),
	@Result(name="findAll",location="/WEB-INF/tag_manage.jsp") 
})
/**
 * 技术标签维护
 * @author WSG
 *
 */
public class TagAction extends BaseAction<Tag> {
	
	private TagServiceI tagServiceI;
	private List<Tag> tagList;
	private Tag tag;
	private Json json;
	
	//查看所有技术标签
	public String findAll() {
		tagList = tagServiceI.findAll();
		return "findAll";
	}
	
	public void addTag() {
		json = new Json();
		try {
			if (tagServiceI.getTagById(tag.getId()) == null) {
				tagServiceI.addTag(tag);
				json.setObj(tag);
				json.setSuccess(true);
				json.setMsg("添加成功");
			} else {
				json.setMsg("id 已被占用！");
			}
		} catch (Exception e) {
			e.printStackTrace();
			json.setMsg("操作异常！");
		} finally {
			super.writJson(json);
		}
	}
	
	public void updateTag() {
		json = new Json();
		try {
			tagServiceI.updateTag(tag);
			json.setObj(tag);
			json.setSuccess(true);
			json.setMsg("修改成功成功");
		} catch (Exception e) {
			e.printStackTrace();
			json.setMsg("操作异常！");
		} finally {
			super.writJson(json);
		}
	}
	
	public TagServiceI getTagServiceI() {
		return tagServiceI;
	}
	@Autowired
	public void setTagServiceI(TagServiceI tagServiceI) {
		this.tagServiceI = tagServiceI;
	}
	public List<Tag> getTagList() {
		return tagList;
	}
	public void setTagList(List<Tag> tagList) {
		this.tagList = tagList;
	}
	public Tag getTag() {
		return tag;
	}
	public void setTag(Tag tag) {
		this.tag = tag;
	}
}
