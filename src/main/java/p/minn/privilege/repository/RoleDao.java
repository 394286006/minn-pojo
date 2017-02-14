package p.minn.privilege.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import p.minn.common.annotation.LogAnnotation;
import p.minn.common.utils.Page;
import p.minn.privilege.entity.IdEntity;
import p.minn.privilege.entity.Role;
import p.minn.privilege.entity.RoleMenu;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 
 */
@LogAnnotation(resourceKey="A000A002")
public interface RoleDao {

	public List<Map<String,Object>> query(@Param("lang") String lang,@Param("page") Page page);

	public Integer getTotal(@Param("page") Page page);
	
	@LogAnnotation(resourceKey="common_add")
	public void save(Role role);
	
	@LogAnnotation(resourceKey="common_edit")
	public void update(Role role);
	
	@LogAnnotation(resourceKey="common_del")
	public void delete(IdEntity idEntity);
	
	public void delRoleResource(@Param("roleid") String roleid);
	
	@LogAnnotation(resourceKey="role_save_role_resource")
	public void saveRoleResource(@Param("roleMenus") List<RoleMenu> roleMenus);

	public List<Map<String, Object>> getRoleResource(@Param("lang") String lang,@Param("roleid") String roleid);
}