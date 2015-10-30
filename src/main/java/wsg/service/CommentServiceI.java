package wsg.service;

import java.util.List;

import wsg.model.Comment;

public interface CommentServiceI extends BaseServiceI<Comment> {
	/**
	 * 根据博客id获取评论列表
	 * @param blogId
	 * @return
	 */
	public List<Comment> findByBlogId(Integer blogId);
	/**
	 * 添加博客留言
	 * @param comment
	 * @return comment
	 */
	public Comment addComment(Comment comment);
}
