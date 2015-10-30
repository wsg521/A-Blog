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

import wsg.model.Blog;
import wsg.model.Image;
import wsg.model.Tag;
import wsg.model.easyui.Json;
import wsg.service.BlogServiceI;
import wsg.service.ImageServiceI;
import wsg.service.TagServiceI;
import wsg.util.Photo2Byte;

@Namespace("/")
@Action("BlogAction")
@InterceptorRefs({ 
	@InterceptorRef(value = "ATIStack") 
})
@Results( {   
//	@Result(name="admin",location="/admin/UserAuthAction!findUncheckedList.action",type="redirectAction"),
//	@Result(name="Login",location="/teacher_jsp/teacher_index.jsp",type="redirect"),
	@Result(name="editBlog",location="/WEB-INF/editBlog.jsp"), 
	@Result(name="viewBlogList",location="/WEB-INF/viewBlogList.jsp")
})
/**
 * 博客
 * @author WSG
 *
 */
public class BlogAction extends BaseAction<Blog> {
	
	private List<File> image; // 上传的文件
	private List<String> imageFileName; // 文件名称
	private List<String> imageContentType; // 文件类型
	private ImageServiceI imageServiceI;
	
	private BlogServiceI blogServiceI;
	private TagServiceI tagServiceI;
	private List<Blog> blogList;
	private List<Tag> tagList;
	private Json json;
	private Blog blog;
	private Image img;
	
	//添加博客
	public void addBlog() {
		json = new Json();
		try {
			if (!blogServiceI.existByTitle(blog.getTitle())) {				
				if (image != null && image.size() > 0) {
					for (int i = 0;i < image.size();i++) {
						img = new Image(Photo2Byte.image2Bytes(image.get(i)));
						blog.apendPath(imageServiceI.addImage(img).getId());
					}
				}
				
				blog.setUserId((Integer) getSession().getAttribute("userId"));
				if (blog.getSource() == 2) blog.setState(1);
				else blog.setState(2);
				blog.setState(2);
				blog.setRate(0);
				blog.setNowCreateTime();
				blogServiceI.addBlog(blog);
				json.setMsg("添加成功");
				json.setSuccess(true);
			} else {
				json.setMsg("博客已存在");
			}
		} catch (Exception e) {
			json.setMsg("添加失败，请重试...");
			e.printStackTrace();
		} finally {
			super.writJson(json);
		}
	}
	
	//获取Blog
	public String gainBlog() {
		blog = blogServiceI.findById(blog.getId());
		tagList = tagServiceI.getAllTagId();
		return "editBlog";
	}
	
	//编辑Blog
	public void editBlog() {
		json = new Json();
		try {
			//修改图片 功能缺口				
			if (blog.getPath() != null && image != null) {
				int i = 0;
				String[] oldImgId;
				if (blog.getPath().contains("&")) {  //已存在图片修改
					oldImgId = blog.getPath().split("&")[1].split(", ");						
					blog.setPath(blog.getPath().split("&")[0]);
					i = oldImgId.length;
					for (int j = 0;j < i;j++) {
						img = new Image(Integer.parseInt(oldImgId[j]),Photo2Byte.image2Bytes(image.get(j)));
						imageServiceI.updateImage(img);
					}
				}
				//添加新图片
				for (;i < image.size();i++) {
					img = new Image(Photo2Byte.image2Bytes(image.get(i)));
					blog.apendPath(imageServiceI.addImage(img).getId());
				}
			} 
			blog.setNowUpdateTime();
			blogServiceI.editBlog(blog);
			json.setSuccess(true);
			json.setMsg("修改成功！");
		} catch (Exception e) {
			e.printStackTrace();
			json.setMsg("修改失败！");
		} finally {
			super.writJson(json);
		}
	}
	
	public String getViewBlogList() {
		try {
			blogList = blogServiceI.findAllR();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "viewBlogList";
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
	public List<Blog> getBlogList() {
		return blogList;
	}
	public void setBlogList(List<Blog> blogList) {
		this.blogList = blogList;
	}	
	public ImageServiceI getImageServiceI() {
		return imageServiceI;
	}
	@Autowired
	public void setImageServiceI(ImageServiceI imageServiceI) {
		this.imageServiceI = imageServiceI;
	}
	public BlogServiceI getBlogServiceI() {
		return blogServiceI;
	}
	@Autowired
	public void setBlogServiceI(BlogServiceI blogServiceI) {
		this.blogServiceI = blogServiceI;
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
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}	
}
