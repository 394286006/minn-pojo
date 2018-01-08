package p.minn.privilege.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import p.minn.common.annotation.LogAnnotation;
import p.minn.privilege.entity.IdEntity;
import p.minn.privilege.entity.Role;
import p.minn.privilege.entity.RoleMenu;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 
 */
//@LogAnnotation(resourceKey="A000A002")
public interface RoleDao extends BaseDao<Role,IdEntity>{

	public void delRoleResource(@Param("roleid") String roleid);
	
	@LogAnnotation(resourceKey="role_save_role_resource")
	public void saveRoleResource(@Param("roleMenus") List<RoleMenu> roleMenus);

	public List<Map<String, Object>> getRoleResource(@Param("lang") String lang,@Param("roleid") String roleid);

	public int checkCode(@Param("code") String code);

	
}