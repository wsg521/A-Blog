package wsg.model;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Life entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "life", catalog = "wsg")
public class Life implements java.io.Serializable {

	// Fields

	private Integer id;
	private String motif;
	private String content;
	private String imgId;
	private String cateId;
	private Timestamp createTime;
	private Timestamp updateTime;
	private Integer userId;

	// Constructors

	/** default constructor */
	public Life() {
	}

	/** minimal constructor */
	public Life(Integer id, Integer userId) {
		this.id = id;
		this.userId = userId;
	}

	/** full constructor */
	public Life(Integer id, String motif, String content, String cateId, Timestamp createTime, Timestamp updateTime, Integer userId) {
		this.id = id;
		this.motif = motif;
		this.content = content;
		this.cateId = cateId;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.userId = userId;
	}
	
	/** full constructor */
	public Life(Integer id, String motif, String content, String imgId, String cateId, Timestamp createTime, Timestamp updateTime, Integer userId) {
		this.id = id;
		this.motif = motif;
		this.content = content;
		this.imgId = imgId;
		this.cateId = cateId;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.userId = userId;
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

	@Column(name = "motif", length = 30)
	public String getMotif() {
		return this.motif;
	}

	public void setMotif(String motif) {
		this.motif = motif;
	}

	@Column(name = "content")
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	@Column(name = "img_id")
	public String getImgId() {
		return this.imgId;
	}
	
	/**
	 * 添加imgId 多个以 “, ”隔开
	 * @param imgId
	 */
	public void apendImgId(int imgId) {
		if (this.imgId==null || this.imgId.equals(""))
			this.imgId = imgId + "";
		else 
			this.imgId += ", " + imgId;
	}
	
	public void setImgId(String imgId) {
		this.imgId = imgId;
	}
	
	@Column(name = "cate_id")
	public String getCateId() {
		return this.cateId;
	}

	public void setCateId(String cateId) {
		this.cateId = cateId;
	}

	@Column(name = "create_time", length = 19, updatable=false)
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

	@Column(name = "user_id", nullable = false, updatable=false)
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

}