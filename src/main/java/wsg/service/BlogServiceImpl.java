package wsg.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wsg.dao.BaseDaoI;
import wsg.model.Blog;

@Service("blogService")
public class BlogServiceImpl extends BaseServiceImpl<Blog> implements BlogServiceI {
	
	@Autowired
	private BaseDaoI<Blog> blogDaoI;
	private Map<String, Object> params;
	private String hql;

	@Override
	public boolean existByTitle(String title) {
		hql = "select count(b.id) from Blog b where b.title = :title";
		params = new HashMap<String, Object>();
		params.put("title", title);
		if (blogDaoI.count(hql, params).intValue() == 1)
			return true;
		return false;
	}

	@Override
	public Blog addBlog(Blog blog) {
		blogDaoI.save(blog);
		return blog;
	}

	@Override
	public List<Blog> findAll() {
		hql = "select new Blog(id,title,tagId,source,substring(content,1,100),view,path,userId,state,rate,createTime) from Blog WHERE source != 4 ORDER by createTime DESC";
		return blogDaoI.find(hql);
	}
	
	@Override
	public List<Blog> findAllR() {
		hql = "select new Blog(id,title,tagId,source,userId,state,rate,createTime,updateTime) from Blog ORDER by createTime DESC";
		return blogDaoI.find(hql);
	}

	@Override
	public Blog findById(Integer id) {
		return blogDaoI.getById(Blog.class, id);
	}

	@Override
	public boolean editBlog(Blog blog) {
		params = new HashMap<String, Object>();
		hql = "UPDATE Blog as b SET " +
				"b.title = :title, b.tagId = :tagId, b.source = :soure, " +
				"b.content = :content, b.view = :view, b.path = :path, " +
				"b.updateTime = :updateTime WHERE b.id= :id";
		params.put("title", blog.getTitle());
		params.put("tagId", blog.getTagId());
		params.put("soure", blog.getSource());
		params.put("content", blog.getContent());
		params.put("view", blog.getView());
		params.put("path", blog.getPath());
		params.put("updateTime", blog.getUpdateTime());
		params.put("id", blog.getId());
		
		blogDaoI.executeHql(hql, params);
		return false;
	}

	@Override
	public List<Blog> findAllIdName() {
		hql = "select new Blog(id,title) from Blog";
		return blogDaoI.find(hql);
	}
	
	@Override
	public List<Blog> findAllByIds(String ids) {
		hql = "select id,title,tag_id as tagId,source,content,view," +
				"path,user_id as userId,state,rate,create_time as createTime," +
				"update_time as updateTime from blog where id in (" + ids + ")"; 
		return blogDaoI.findBySql(hql,Blog.class);
	}
	
}
