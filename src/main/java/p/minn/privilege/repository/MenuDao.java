package p.minn.privilege.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import p.minn.common.annotation.LogAnnotation;
import p.minn.common.utils.Page;
import p.minn.privilege.entity.IdEntity;
import p.minn.privilege.entity.Menu;
import p.minn.privilege.entity.User;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 
 */
@LogAnnotation(resourceKey="A000A001")
public interface MenuDao {


	public List<Map<String,Object>> query(@Param("lang") String lang,@Param("nodeid") String nodeid,@Param("page") Page page);
	
	public Integer getTotal(@Param("nodeid") String nodeid,@Param("page") Page page);
	
	@LogAnnotation(resourceKey="common_add")
	public void save(Menu menu);

	@LogAnnotation(resourceKey="common_edit")
	public void update(Menu menu);

	@LogAnnotation(resourceKey="common_del")
	public void delete(IdEntity idEntity);

	public List<Map<String,Object>> getPrivateMenu(@Param("lang") String lang,@Param("user") User user);

	public List<Map<String,Object>> getResource(@Param("lang") String lang);
	
	public Integer checkCode(@Param("code") String code);
}