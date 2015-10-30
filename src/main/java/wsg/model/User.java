package wsg.model;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * User entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user", catalog = "wsg")
public class User implements java.io.Serializable {

	// Fields

	private Integer id;
	private String loginName;
	private String nickName;
	private Integer age;
	private Boolean sex;
	private String photoPath;
	private Integer power;
	private Timestamp createTime;
	private Timestamp updateTime;
	private String pwd;

	// Constructors

	/** default constructor */
	public User() {
	}
	
	/**
	 * 用户id和登录名称
	 * @param id
	 * @param loginName
	 */
	public User(Integer id, String loginName) {
		this.id = id;
		this.loginName = loginName;
	}

	/** minimal constructor */
	public User(Integer id, String loginName, String pwd) {
		this.id = id;
		this.loginName = loginName;
		this.pwd = pwd;
	}

	/** full constructor */
	public User(Integer id, String loginName, String nickName, Integer age, Boolean sex, String photoPath, Integer power, Timestamp createTime, Timestamp updateTime, String pwd) {
		this.id = id;
		this.loginName = loginName;
		this.nickName = nickName;
		this.age = age;
		this.sex = sex;
		this.photoPath = photoPath;
		this.power = power;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.pwd = pwd;
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

	@Column(name = "loginName", nullable = false, length = 20)
	public String getLoginName() {
		return this.loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	@Column(name = "nickName", length = 20)
	public String getNickName() {
		return this.nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	@Column(name = "age")
	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	@Column(name = "sex")
	public Boolean getSex() {
		return this.sex;
	}

	public void setSex(Boolean sex) {
		this.sex = sex;
	}

	@Column(name = "photoPath")
	public String getPhotoPath() {
		return this.photoPath;
	}

	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}

	@Column(name = "power")
	public Integer getPower() {
		return this.power;
	}

	public void setPower(Integer power) {
		this.power = power;
	}

	@Column(name = "createTime", length = 19)
	public Timestamp getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	@Column(name = "updateTime", length = 19)
	public Timestamp getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	@Column(name = "pwd", nullable = false, length = 32)
	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}