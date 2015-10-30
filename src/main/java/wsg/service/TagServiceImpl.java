package wsg.service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wsg.dao.BaseDaoI;
import wsg.model.Tag;

@Service("tagService")
public class TagServiceImpl extends BaseServiceImpl<Tag> implements TagServiceI {
	
	@Autowired
	private BaseDaoI<Tag> tagDaoI;
	private List<Tag> tagList;
	
	public List<Tag> findAll() {
		tagList = tagDaoI.find("FROM Tag");
		return tagList;
	}
	
	public Tag getTagById(String id) {
		return tagDaoI.getById(Tag.class, id);
	}
	
	public Tag addTag(Tag tag) {
		tag.setCreateTime(new Timestamp(new Date().getTime()));
		tagDaoI.save(tag);
		return tag;
	}
	
	public Tag updateTag(Tag tag) {
		tag.setUpdateTime(new Timestamp(new Date().getTime()));
		tagDaoI.update(tag);
		return tag;
	}
	
	public List<Tag> getAllTagId() {
		tagList = tagDaoI.find("SELECT new Tag(id,name) FROM Tag");
		return tagList;
	}
}
