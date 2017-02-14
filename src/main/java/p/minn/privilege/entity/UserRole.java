package p.minn.privilege.entity;

import p.minn.common.annotation.LogAnnotation;


/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 用户角色
 *
 */
@LogAnnotation
public class UserRole {

	@LogAnnotation(resourceKey="user_name",mkey="USER")
	private String userId;
	
	@LogAnnotation(resourceKey="role_name",mkey="ROLE")
	private String roleId;

	public UserRole(String userId, String roleId) {
		super();
		this.userId = userId;
		this.roleId = roleId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	
	
	
	
}
