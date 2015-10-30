package wsg.model;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Cate entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "cate", catalog = "wsg")
public class Cate implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Timestamp createTime;
	private Timestamp updateTime;
	private Integer userId;

	// Constructors

	/** default constructor */
	public Cate() {
	}

	/** minimal constructor */
	public Cate(Integer id, Integer userId) {
		this.id = id;
		this.userId = userId;
	}

	/** full constructor */
	public Cate(Integer id, String name, Timestamp createTime, Timestamp updateTime, Integer userId) {
		this.id = id;
		this.name = name;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.userId = userId;
	}

	// Property accessors
	@Id
	@Column(name = "Id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "name", length = 50)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "create_time", length = 19)
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

	@Column(name = "user_id", nullable = false)
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

}