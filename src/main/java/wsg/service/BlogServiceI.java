package wsg.service;

import java.util.List;

import wsg.model.Blog;

public interface BlogServiceI extends BaseServiceI<Blog> {
	
	/**
	 * 根据博客title查询是否存在相同的博客
	 * @param title
	 * @return 存在返回true,不存在返回false
	 */
	public boolean existByTitle(String title);
	
	/**
	 * 添加博客
	 * @param blog
	 * @return 博客对象(id存在)
	 */
	public Blog addBlog(Blog blog);
	
	/**
	 * 查询所有
	 * @return
	 */
	public List<Blog> findAll();
	
	/**
	 * 管理查看
	 * @return
	 */
	public List<Blog> findAllR();
	
	/**
	 * 根据Id查询博客
	 * @param id
	 * @return
	 */
	public Blog findById(Integer id);
	
	/**
	 * 修改Blog
	 * @param blog
	 * @return
	 */
	public boolean editBlog(Blog blog);
	
	/**
	 * 获取所有id和name集合
	 * @return
	 */
	public List<Blog> findAllIdName();
	
	/**
	 * 根据id集合获取所有符合条件的Blog
	 * @param ids
	 * @return
	 */
	public List<Blog> findAllByIds(String ids);
}
