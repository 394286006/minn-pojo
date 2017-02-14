package p.minn.privilege.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import p.minn.common.annotation.LogAnnotation;
import p.minn.common.utils.Page;
import p.minn.privilege.entity.IdEntity;
import p.minn.privilege.entity.User;
import p.minn.privilege.entity.UserRole;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @omment 
 */
@LogAnnotation(resourceKey="A000A000")
public interface UserDao {

	public List<Map<String,Object>> query(@Param("lang") String lang,@Param("page") Page page);

	public Integer getTotal(@Param("page") Page page);
	
	@LogAnnotation(resourceKey="common_add")
	public void save(User user);
	
	@LogAnnotation(resourceKey="common_edit")
	public void update(User user);

	@LogAnnotation(resourceKey="common_del")
	public void delete(IdEntity idEntity);
	
	public void delUserRole(@Param("userid") String userid);

	@LogAnnotation(resourceKey="user_save_user_resource")
	public void saveUserRole(@Param("userRoles") List<UserRole> userRoles);

	public User checkUser(@Param("name") String name,@Param("pwd") String pwd);

	public List<Map<String,Object>> getUserRole(@Param("lang") String lang, @Param("userid") String userid);

	public User findByLoginName(@Param("loginName") String loginName);

	public List<String> getUserRoleList(@Param("id") Integer userid);

}