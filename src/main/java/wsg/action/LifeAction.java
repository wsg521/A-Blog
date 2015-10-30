package wsg.action;

import java.io.File;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import wsg.model.Image;
import wsg.model.Life;
import wsg.model.easyui.Json;
import wsg.service.ImageServiceI;
import wsg.service.LifeServiceI;
import wsg.util.Photo2Byte;
import wsg.util.Wsg;

@Namespace("/")
@Action("LifeAction")
//@InterceptorRefs({ 
//	@InterceptorRef(value = "ATIStack") 
//})
@Results( {   
//	@Result(name="admin",location="/admin/UserAuthAction!findUncheckedList.action",type="redirectAction"),
//	@Result(name="Login",location="/teacher_jsp/teacher_index.jsp",type="redirect"),
	@Result(name="editLife",location="/WEB-INF/editLife.jsp"), 
	@Result(name="viewLifeList",location="/WEB-INF/viewLifeList.jsp"),
	@Result(name="viewLife",location="/footPrint.jsp")
})
/**
 * 管理脚印
 * @author wusg
 *
 */
public class LifeAction extends BaseAction<Life> {
	
	private List<File> image; // 上传的文件
	private List<String> imageFileName; // 文件名称
	private List<String> imageContentType; // 文件类型	
	private ImageServiceI imageServiceI;
	
	private LifeServiceI lifeServiceI;
	private List<Life> lifes;
	private Life life;
	private Json json;
	private Image img;
	
	//添加生活记录
	public void addLife() {
		json = Wsg.VerificationAuthority(getSession());
		try {
			if (json.isSuccess()) {
				if (!lifeServiceI.existByMotif(life.getMotif())) {
					if (image != null && image.size() > 0) {
						for (int i = 0;i < image.size();i++) {
							img = new Image(Photo2Byte.image2Bytes(image.get(i)));
							life.apendImgId(imageServiceI.addImage(img).getId());
						}
					}
					life.setNowCreateTime();
					life.setUserId((Integer)getSession().getAttribute("userId"));
					lifeServiceI.addLife(life);
					json.setMsg("添加成功");
				} else {
					json.setMsg("生活记录已存在！");
				}
			} 
		} catch (Exception e) {
			json.setMsg("添加失败，请重试...");
			json.setSuccess(false);
			e.printStackTrace();
		} finally {
			super.writJson(json);
		}
	}
	
	//管理员获取Life列表
	public String getViewLifeList() {
		try {
			if (Wsg.VerificationAuthority(getSession()).isSuccess()) {
				lifes = lifeServiceI.findAllR();
			} else
				return "login";
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return "viewLifeList";
		}
	}
	
	//管理员获取相应的Life
	public String gainLife() {
		try {
			if (Wsg.VerificationAuthority(getSession()).isSuccess()) {
				life = lifeServiceI.getById(life.getId());
			} else
				return "login";
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return "editLife";
		}
	}
	
	//管理员编辑Life
	public void editLife() {
		json = Wsg.VerificationAuthority(getSession());
		try {
			if (json.isSuccess()) {
				//修改图片 功能缺口				
				if (life.getImgId() != null && image != null) {
					int i = 0;
					String[] oldImgId;
					if (life.getImgId().contains("&")) {  //已存在图片修改
						oldImgId = life.getImgId().split("&")[1].split(", ");						
						life.setImgId(life.getImgId().split("&")[0]);
						i = oldImgId.length;
						for (int j = 0;j < i;j++) {
							img = new Image(Integer.parseInt(oldImgId[j]),Photo2Byte.image2Bytes(image.get(j)));
							imageServiceI.updateImage(img);
						}
					}
					//添加新图片
					for (;i < image.size();i++) {
						img = new Image(Photo2Byte.image2Bytes(image.get(i)));
						life.apendImgId(imageServiceI.addImage(img).getId());
					}
				} 
				life.setNowUpdateTime();
				lifeServiceI.editLife(life);	
				json.setMsg("修改成功");
			} 
		} catch (Exception e) {
			json.setMsg("修改失败，请重试...");
			json.setSuccess(false);
			e.printStackTrace();
		} finally {
			super.writJson(json);
		}
	}
	 
	//获取脚印足迹记录
	public void getViewLife() {
		lifes = lifeServiceI.findAll();   
		super.writJson(lifes);
	}
	
	public ImageServiceI getImageServiceI() {
		return imageServiceI;
	}
	@Autowired
	public void setImageServiceI(ImageServiceI imageServiceI) {
		this.imageServiceI = imageServiceI;
	}
	public LifeServiceI getLifeServiceI() {
		return lifeServiceI;
	}
	@Autowired
	public void setLifeServiceI(LifeServiceI lifeServiceI) {
		this.lifeServiceI = lifeServiceI;
	}
	public List<Life> getLifes() {
		return lifes;
	}
	public void setLifes(List<Life> lifes) {
		this.lifes = lifes;
	}
	public Life getLife() {
		return life;
	}
	public void setLife(Life life) {
		this.life = life;
	}
	public List<File> getImage() {
		return image;
	}
	public void setImage(List<File> image) {
		this.image = image;
	}
	public List<String> getImageFileName() {
		return imageFileName;
	}
	public void setImageFileName(List<String> imageFileName) {
		this.imageFileName = imageFileName;
	}
	public List<String> getImageContentType() {
		return imageContentType;
	}
	public void setImageContentType(List<String> imageContentType) {
		this.imageContentType = imageContentType;
	}
	
}
