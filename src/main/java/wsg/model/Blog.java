package wsg.model;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * Blog entity. @author MyEclipse Persistence Tools
 */
/**
 * @author WSG
 *
 */
@Entity
@Table(name = "blog", catalog = "wsg")
public class Blog implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String tagId;
	private Integer source;
	private String content;
	private String view;
	private String path;
	private Integer userId;
	private Integer state;
	private Integer rate;
	private Timestamp createTime;
	private Timestamp updateTime;
	
	@Transient
	private String[] tag;
	@Transient
	private String[] paths;
	
	// Constructors

	/** default constructor */
	public Blog() {
	}
	
	/** minimal constructor */
	public Blog(Integer id, String title) {
		this.id = id;
		this.title = title;
	}

	/** minimal constructor */
	public Blog(Integer id, String title, String content, Integer userId) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.userId = userId;
	}

	/** full constructor */
	public Blog(Integer id, String title, String tagId, Integer source, String content, Integer userId, Integer state, Integer rate, Timestamp createTime, Timestamp updateTime) {
		this.id = id;
		this.title = title;
		this.tagId = tagId;
		this.source = source;
		this.content = content;
		this.userId = userId;
		this.state = state;
		this.rate = rate;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	
	/** full constructor */
	public Blog(Integer id, String title, String tagId, Integer source, String content, String path, Integer userId, Integer state, Integer rate, java.util.Date createTime) {
		this.id = id;
		this.title = title;
		this.tagId = tagId;
		this.source = source;
		this.content = content;
		this.path = path;
		this.userId = userId;
		this.state = state;
		this.rate = rate;
		this.createTime = new Timestamp(createTime.getTime());
	}
		
	/** full constructor */
	public Blog(Integer id, String title, String tagId, Integer source, String content, String view, String path, Integer userId, Integer state, Integer rate, java.util.Date createTime) {
		this.id = id;
		this.title = title;
		this.tagId = tagId;
		this.source = source;
		this.content = content;
		this.view = view;
		this.path = path;
		this.userId = userId;
		this.state = state;
		this.rate = rate;
		this.createTime = new Timestamp(createTime.getTime());
	}
	
	/** full constructor */
	public Blog(Integer id, String title, String tagId, Integer source, String content, Integer userId, Integer state, Integer rate, java.util.Date createTime) {
		this.id = id;
		this.title = title;
		this.tagId = tagId;
		this.source = source;
		this.content = content;
		this.userId = userId;
		this.state = state;
		this.rate = rate;
		this.createTime = new Timestamp(createTime.getTime());
	}
	
	/** full constructor */
	public Blog(Integer id, String title, String tagId, Integer source, Integer userId, Integer state, Integer rate, java.util.Date createTime, java.util.Date updateTime) {
		this.id = id;
		this.title = title;
		this.tagId = tagId;
		this.source = source;
		this.userId = userId;
		this.state = state;
		this.rate = rate;
		if (createTime != null)
			this.createTime = new Timestamp(createTime.getTime());
		if (updateTime != null)
			this.updateTime = new Timestamp(updateTime.getTime());
	}
	
	public Blog(Integer id, String title, String tagId, Integer source, String content, String path, Integer userId, Integer state, Integer rate, Timestamp createTime, Timestamp updateTime) {
		super();
		this.id = id;
		this.title = title;
		this.tagId = tagId;
		this.source = source;
		this.content = content;
		this.path = path;
		this.userId = userId;
		this.state = state;
		this.rate = rate;
		if (createTime != null)
			this.createTime = new Timestamp(createTime.getTime());
		if (updateTime != null)
			this.updateTime = new Timestamp(updateTime.getTime());
	}
	
	public Blog(Integer id, String title, String tagId, Integer source, String content, String view, String path, Integer userId, Integer state, Integer rate, Timestamp createTime, Timestamp updateTime) {
		super();
		this.id = id;
		this.title = title;
		this.tagId = tagId;
		this.source = source;
		this.content = content;
		this.view = view;
		this.path = path;
		this.userId = userId;
		this.state = state;
		this.rate = rate;
		if (createTime != null)
			this.createTime = new Timestamp(createTime.getTime());
		if (updateTime != null)
			this.updateTime = new Timestamp(updateTime.getTime());
	}

	// Property accessors
	@Id
	@Column(name = "id", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "title", nullable = false, length = 255)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "tag_id")
	public String getTagId() {
		return this.tagId;
	}

	public void setTagId(String tagId) {
		this.tagId = tagId;
	}

	@Column(name = "source")
	public Integer getSource() {
		return this.source;
	}

	public void setSource(Integer source) {
		this.source = source;
	}

	@Column(name = "content", nullable = false, length = 65535)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	@Column(name = "view", nullable = false, length = 65535)
	public String getView() {
		return this.view;
	}

	public void setView(String view) {
		this.view = view;
	}
	
	@Column(name = "path")
	public String getPath() {
		return this.path;
	}
	
	/**
	 * 添加path 多个以 “, ”隔开
	 * @param path
	 */
	public void apendPath(int imgId) {
		if (this.path==null || this.path.equals(""))
			this.path = imgId + "";
		else 
			this.path += ", " + imgId;
	}
	
	public void setPath(String path) {
		this.path = path;
	}

	@Column(name = "user_id", nullable = false)
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(name = "state")
	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	@Column(name = "rate")
	public Integer getRate() {
		return this.rate;
	}

	public void setRate(Integer rate) {
		this.rate = rate;
	}

	@Column(name = "create_time", length = 19)
	public Timestamp getCreateTime() {
		return this.createTime;
	}
	/**
	 * 设置当前时间为创建时间
	 */
	public void setNowCreateTime() {
		this.createTime = new Timestamp(new Date().getTime());
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	@Column(name = "update_time", length = 19)
	public Timestamp getUpdateTime() {
		return this.updateTime;
	}
	/**
	 * 设置当前时间为更新时间
	 */
	public void setNowUpdateTime() {
		this.updateTime = new Timestamp(new Date().getTime());
	}
	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}
	@Transient
	public String[] getTag() {
		if (tagId != null)
			tag = tagId.split(", ");
		return tag;
	}
	public void setTag(String[] tag) {		
		this.tag = tag;
	}
	@Transient
	public String[] getPaths() {
		if (path != null)
			paths = path.split(", ");
		return paths;
	}
	public void setPaths(String[] paths) {
		this.paths = paths;
	}
	
}