package wsg.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import wsg.model.Blog;
import wsg.model.Comment;
import wsg.model.Home;
import wsg.model.Tag;
import wsg.model.easyui.Json;
import wsg.service.BlogServiceI;
import wsg.service.CommentServiceI;
import wsg.service.HomeServiceI;
import wsg.service.TagServiceI;

@Namespace("/")
@Action("BlogViewAction")
@Results( {   
//	@Result(name="admin",location="/admin/UserAuthAction!findUncheckedList.action",type="redirectAction"),
//	@Result(name="viewBlog",location="/teacher_jsp/teacher_index.jsp",type="redirect"),
	@Result(name="viewBlog",location="/viewBlogList.jsp"),
	@Result(name="Blog",location="/viewBlog.jsp"),
	@Result(name="selectBlog",location="/viewBlogList.jsp"),
	@Result(name="footPrint",location="/footPrint.jsp"),
	@Result(name="wsg",location="/wsg.jsp")
})

/**
 * 不涉及修改数据库的Blog
 * @author WSG
 *
 */
public class BlogViewAction extends BaseAction {
	
	private HomeServiceI homeServiceI;
	private List<Home> homeList;
	private BlogServiceI blogServiceI;
	private CommentServiceI commentServiceI;
	private List<Blog> blogList;
	private List<Comment> commentList;
	private TagServiceI tagServiceI;
	private List<Tag> tagList;
	private Json json;
	private Blog blog;
	private Comment comment;
	
	//博客首页
	public String index() {
		
		try {
			homeList = homeServiceI.findAllHome();
			
			for (int i = 0;i < homeList.size();i++) {
				homeList.get(i).setBlogList(blogServiceI.findAllByIds(homeList.get(i).getIds()));
			}		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "wsg";
	}
	
	//获取博客列表
	public String viewBlog() {
		blogList = blogServiceI.findAll();
		tagList = tagServiceI.getAllTagId();
		getRequest().setAttribute("home", homeServiceI.getById(1));
		return "viewBlog";
	}
	
	//根据博客id获取博客内容
	public String viewBlogById() {
		blog = blogServiceI.findById(blog.getId());
		tagList = tagServiceI.getAllTagId();
		getRequest().setAttribute("home", homeServiceI.getById(2));
		return "Blog";
	}
	
	//获取脚印页面主题内容
	public String footPrint() {
		getRequest().setAttribute("home", homeServiceI.getById(3));
		return "footPrint";
	}
	
	//添加博客留言
	public void addComment() {
		json = new Json();
		try {
			comment = commentServiceI.addComment(comment);
			json.setSuccess(true);
			json.setMsg("评论成功！");
			//json.setObj(comment);
		} catch (Exception e) {
			e.printStackTrace();
			json.setMsg("评论失败！");
		} finally {
			super.writJson(json);
		}
	}
	
	//查看博客详细信息以及博客留言
	public String selectBlog() {
		blog = blogServiceI.findById(blog.getId());
		commentList = commentServiceI.findByBlogId(blog.getId());
		return "selectBlog";
	}
	
	public HomeServiceI getHomeServiceI() {
		return homeServiceI;
	}
	@Autowired
	public void setHomeServiceI(HomeServiceI homeServiceI) {
		this.homeServiceI = homeServiceI;
	}
	public BlogServiceI getBlogServiceI() {
		return blogServiceI;
	}
	@Autowired
	public void setBlogServiceI(BlogServiceI blogServiceI) {
		this.blogServiceI = blogServiceI;
	}
	public CommentServiceI getCommentServiceI() {
		return commentServiceI;
	}
	@Autowired
	public void setCommentServiceI(CommentServiceI commentServiceI) {
		this.commentServiceI = commentServiceI;
	}
	public List<Home> getHomeList() {
		return homeList;
	}
	public void setHomeList(List<Home> homeList) {
		this.homeList = homeList;
	}
	public List<Comment> getCommentList() {
		return commentList;
	}
	public void setCommentList(List<Comment> commentList) {
		this.commentList = commentList;
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
	public Json getJson() {
		return json;
	}
	public void setJson(Json json) {
		this.json = json;
	}
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	public List<Blog> getBlogList() {
		return blogList;
	}
	public void setBlogList(List<Blog> blogList) {
		this.blogList = blogList;
	}
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}	
}
