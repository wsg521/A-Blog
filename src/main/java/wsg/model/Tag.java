package wsg.model;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Tag entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "tag", catalog = "wsg")
public class Tag implements java.io.Serializable {

	// Fields

	private String id;
	private String name;
	private String parentId;
	private Timestamp createTime;
	private Timestamp updateTime;

	// Constructors

	/** default constructor */
	public Tag() {
	}

	/** minimal constructor */
	public Tag(String id, String name) {
		this.id = id;
		this.name = name;
	}

	/** full constructor */
	public Tag(String id, String name, String parentId, Timestamp createTime, Timestamp updateTime) {
		this.id = id;
		this.name = name;
		this.parentId = parentId;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}

	// Property accessors
	@Id
	@Column(name = "id", unique = true, nullable = false, length = 10)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name = "name", nullable = false, length = 20)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "parent_id", length = 10)
	public String getParentId() {
		return this.parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
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

}