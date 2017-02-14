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
public class AccountRole {

	@LogAnnotation(resourceKey="account_name",mkey="ACCOUNT")
	private String accountId;
	
	@LogAnnotation(resourceKey="role_name",mkey="ROLE")
	private String roleId;

	public AccountRole(String accountId, String roleId) {
		super();
		this.accountId = accountId;
		this.roleId = roleId;
	}

	public String getAccountId() {
		return accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	
	
	
	
}
