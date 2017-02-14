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
public class Account extends IdEntity{
	
	@LogAnnotation(resourceKey="account_name")
	private String name;
	
	@LogAnnotation(resourceKey="account_pwd")
	private String pwd;
	
	@LogAnnotation(resourceKey="account_type",mkey="ACCOUNTTYPE")
	private Integer type;
	
	@LogAnnotation(resourceKey="account_logintype",mkey="LOGINTYPE")
	private Integer loginType;
	
	@LogAnnotation(resourceKey="common_active",mkey="ACTIVETYPE")
	private Integer active;
	
	private String salt;
	
	private Integer departmentId;
	
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

  public Integer getDepartmentId() {
    return departmentId;
  }

  public void setDepartmentId(Integer departmentId) {
    this.departmentId = departmentId;
  }
	
	
}
