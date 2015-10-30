package wsg.action;

import java.io.IOException;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import wsg.model.Image;
import wsg.service.ImageServiceI;
import wsg.util.Photo2Byte;

@Namespace("/")
@Action("imageAction")
@Results( {   
//	@Result(name="admin",location="/admin/UserAuthAction!findUncheckedList.action",type="redirectAction"),
//	@Result(name="Login",location="/teacher_jsp/teacher_index.jsp",type="redirect"),
	@Result(name="photo",location="/photo.jsp")
})
/**
 * 图片展示
 * @author wusg
 *
 */
public class ImageAction extends BaseAction<Image> {

	private ImageServiceI imageServiceI;
	private Image img;
	
	//根据图像id获取图像的输出流
	public void photoOPS() {
		try {
			img = imageServiceI.getById(img.getId());
			getResponse().getOutputStream().write(img.getImg());
			getResponse().getOutputStream().flush();
			getResponse().getOutputStream().close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ImageServiceI getImageServiceI() {
		return imageServiceI;
	}
	@Autowired
	public void setImageServiceI(ImageServiceI imageServiceI) {
		this.imageServiceI = imageServiceI;
	}
	public Image getImg() {
		return img;
	}
	public void setImg(Image img) {
		this.img = img;
	}
}
