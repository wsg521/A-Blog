package wsg.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import wsg.model.easyui.Json;


@Namespace("/")
@Action("UpLoadAction")
@Results({
//	@Result(name="AjaxRevert",location="/Ajax/ResultMessage.jsp")
})
/**
 * 上传图片
 * @author WSG
 *
 */
public class UpLoadAction extends BaseAction {
	
	private List<File> image; // 上传的文件
	private List<String> imageFileName; // 文件名称
	private List<String> imageContentType; // 文件类型
	private String path; //文件位置
	private String mPath = "imgs/blog"; //相对根路径
	
	public void savaImage() {
		Json json = new Json();
		try {
			if (image != null && image.size() > 0) {
				String imagePath = "";
				path = ServletActionContext.getServletContext().getRealPath("/"+mPath);
				for (int i = 0;i < image.size();i++) {
					if (i == 0) {
						imagePath += mPath + "/" + imageFileName.get(i);
					} else {
						imagePath += ", " + mPath + "/" + imageFileName.get(i);
					}
//					System.out.println(image.get(i));
//					System.out.println(imageFileName.get(i));
//					System.out.println(imageContentType.get(i));
					File destFile = new File(path, imageFileName.get(i));
					if (!destFile.exists()) {
						destFile.createNewFile();
					}
					FileUtils.copyFile(image.get(i), destFile);
				}			
				json.setSuccess(true);
				json.setObj(imagePath);
				json.setMsg("图片上传成功！");
			}
		} catch (Exception e) {
			json.setMsg("图片上传失败！");
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			super.writJson(json);
		}
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
//上传ajax
//function upload() {
//	if (Id != 1) {
//		var str = new Array(Id - 1);
//		for (var i = 1;i < Id;i++)
//			str[i]= "image" + i;						
//		
//    	$.ajaxFileUpload({
//			url : projectName+'/UpLoadAction!savaImage.action',
//			secureuri : false, //是否是安全的提交
//			fileElementId : str,
//			dataType : 'json',
//			success : function(data, status) {		    				
//				if(data.success) {
//					$('#blog_path').val(data.obj);
//				}
//				alert(data.msg);
//			},
//			error : function(data, status, e) {
//				alert('上传出错');
//			}
//		})
//	} else {
//		alert('请选择图片！');
//	}
//}
