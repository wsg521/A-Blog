package wsg.model;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.servlet.ServletOutputStream;

/**
 * Image entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "image", catalog = "wsg")
public class Image implements java.io.Serializable {

	// Fields

	private Integer id;
	private byte[] img; 
	private Timestamp createTime;
	private Timestamp updateTime;
	
	// Constructors

	/** default constructor */
	public Image() {
	}

	/** minimal constructor */
	public Image(Integer id, byte[] img) {
		this.id = id;
		this.img = img;
		this.updateTime = new Timestamp(new Date().getTime());
	}
	
	/** full constructor */
	public Image(byte[] img) {
		this.img = img;
		this.createTime = new Timestamp(new Date().getTime());
	}
	
	/** full constructor */
	public Image(Integer id, byte[] img, Timestamp createTime, Timestamp updateTime) {
		this.id = id;
		this.img = img;
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

	@Column(name = "img", nullable = false)
	public byte[] getImg() {
		return this.img;
	}

	public void setImg(byte[] img) {
		this.img = img;
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