package p.minn.privilege.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;

import p.minn.common.annotation.LogAnnotation;
import p.minn.common.annotation.MemCachedAnnotation;
import p.minn.common.annotation.MongoAnnotation;
import p.minn.common.aop.mybatis.MybatisMethodEnum;
import p.minn.common.utils.Page;
import p.minn.privilege.entity.Department;
import p.minn.privilege.entity.IdEntity;
import p.minn.privilege.entity.Account;
import p.minn.privilege.entity.AccountRole;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @omment 
 */
//@LogAnnotation(resourceKey="A000A000")
public interface AccountDao extends BaseDao<Account,IdEntity>{

	public void delAccountRole(@Param("accountid") String accountid);

	@LogAnnotation(resourceKey="account_save_account_resource")
	public void saveAccountRole(@Param("accountRoles") List<AccountRole> accountRoles);

	public Account checkAccount(@Param("name") String name,@Param("pwd") String pwd);

	public Account findByLoginName(@Param("loginName") String loginName);

	public List<String> getAccountRoleList(@Param("id") Integer accountid);
	
	public List<String> getAccountRoleRealmList(@Param("accountid") Integer accountid);

	public Account getAccountById( @Param("account") Account account);
	
	public List<Map<String, Object>> getAccountRole(@Param("lang") String lang,
			@Param("condition")Map<String, String> condition);
	public void updateKey(@Param("name") String name,@Param("randomKey") String randomKey);
	
	public Account findByRandomKey(@Param("randomKey") String randomKey);
	
	public int checkQrCodeByRandomKey(@Param("randomKey") String randomKey);

    public Account findAccountById(@Param("accountId")Integer accountId);

}