package wsg.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wsg.dao.BaseDaoI;
import wsg.model.Comment;

@Service("commentService")
public class CommentServiceImpl extends BaseServiceImpl<Comment> implements CommentServiceI {
	
	@Autowired
	private BaseDaoI<Comment> commentDaoI;
	private Map<String, Object> params;
	private String hql;

	@Override
	public List<Comment> findByBlogId(Integer blogId) {
		hql = "from Comment c where c.blogId = :blogId";
		params = new HashMap<String, Object>();
		params.put("blogId", blogId);		
		return commentDaoI.find(hql, params);
	}

	@Override
	public Comment addComment(Comment comment) {
		commentDaoI.save(comment);
		return comment;
	}
}
