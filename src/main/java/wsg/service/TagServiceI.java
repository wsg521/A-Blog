package wsg.service;

import java.util.List;

import wsg.model.Tag;

public interface TagServiceI extends BaseServiceI<Tag> {
	/**
	 * 获取所有技术标签
	 * @return
	 */
	public List<Tag> findAll();
	/**
	 * 根据 Id 获取技术标签
	 * @param id
	 * @return
	 */
	public Tag getTagById(String id);
	/**
	 * 添加技术标签
	 * @param tag
	 * @return
	 */
	public Tag addTag(Tag tag);
	/**
	 * 修改技术标签
	 * @param tag
	 * @return
	 */
	public Tag updateTag(Tag tag);
	/**
	 * 获取所有技术标签的id和name 
	 * @return
	 */
	public List<Tag> getAllTagId();
}
