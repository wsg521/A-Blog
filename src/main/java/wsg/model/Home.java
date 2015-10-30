package wsg.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * Home entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "home", catalog = "wsg")
public class Home implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String content;
	private String ids;
	private Integer md;
	private Integer sequence;
	private Timestamp createTime;
	private Timestamp updateTime;
	
	private List<Blog> blogList;

	// Constructors

	/** default constructor */
	public Home() {
	}

	/** minimal constructor */
	public Home(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Home(Integer id, String title, String content, String ids, Integer md, Integer sequence, Timestamp createTime, Timestamp updateTime) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.ids = ids;
		this.md = md;
		this.sequence = sequence;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}

	// Property accessors
	@Id
	@Column(name = "Id", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "title")
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "content", nullable = false, length = 65535)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "ids")
	public String getIds() {
		return this.ids;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}

	@Column(name = "md")
	public Integer getMd() {
		return this.md;
	}

	public void setMd(Integer md) {
		this.md = md;
	}

	@Column(name = "sequence")
	public Integer getSequence() {
		return this.sequence;
	}

	public void setSequence(Integer sequence) {
		this.sequence = sequence;
	}

	@Column(name = "create_time", length = 19, updatable=false)
	public Timestamp getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	@Column(name = "update_time", length = 19)
	public Timestamp getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}
	@Transient
	public List<Blog> getBlogList() {
		return blogList;
	}
	public void setBlogList(List<Blog> blogList) {
		this.blogList = blogList;
	}
	
}