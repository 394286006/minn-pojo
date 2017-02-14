package p.minn.privilege.entity;

import p.minn.common.annotation.LogAnnotation;



/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 用户  
 *
 */
@LogAnnotation
public class User extends IdEntity{
	
	@LogAnnotation(resourceKey="user_name")
	private String name;
	
	@LogAnnotation(resourceKey="user_pwd")
	private String pwd;
	
	@LogAnnotation(resourceKey="user_type",mkey="ACCOUNTTYPE")
	private Integer type;
	
	@LogAnnotation(resourceKey="user_logintype",mkey="LOGINTYPE")
	private Integer loginType;
	
	@LogAnnotation(resourceKey="common_active",mkey="ACTIVETYPE")
	private Integer active;
	
	private String salt;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getLoginType() {
		return loginType;
	}

	public void setLoginType(Integer loginType) {
		this.loginType = loginType;
	}

	public Integer getActive() {
		return active;
	}

	public void setActive(Integer active) {
		this.active = active;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}
	
	
}
