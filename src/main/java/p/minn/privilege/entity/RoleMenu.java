package p.minn.privilege.entity;

import p.minn.common.annotation.LogAnnotation;


/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 角色菜单
 *
 */

@LogAnnotation
public class RoleMenu {

	@LogAnnotation(resourceKey="role_name",mkey="ROLE")
	private String roleId;
	
	@LogAnnotation(resourceKey="menu_name",mkey="RESOURCEPID")
	private String resourceId;

	public RoleMenu(String roleId, String resourceId) {
		super();
		this.roleId = roleId;
		this.resourceId = resourceId;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getResourceId() {
		return resourceId;
	}

	public void setResourceId(String resourceId) {
		this.resourceId = resourceId;
	}
	
	
}
