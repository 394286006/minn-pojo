package p.minn.privilege.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import p.minn.privilege.entity.IdEntity;
import p.minn.privilege.entity.Menu;
import p.minn.vo.MyUserDetails;


/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 
 */
//@LogAnnotation(resourceKey="A000A001")
public interface MenuDao extends BaseDao<Menu,IdEntity>{


	public List<Map<String,Object>> getPrivateMenu(@Param("lang") String lang,@Param("user") MyUserDetails user);

	public List<Map<String,Object>> getResource(@Param("lang") String lang);
	
	public Integer checkCode(@Param("code") String code);

}