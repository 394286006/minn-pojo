package p.minn.privilege.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import p.minn.common.baseDao.BaseDao;
import p.minn.common.entity.IdEntity;
import p.minn.common.utils.Page;
import p.minn.privilege.entity.Category;
import p.minn.privilege.entity.Menu;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 
 */
//@LogAnnotation(resourceKey="A000A001")
public interface CategoryDao extends BaseDao<Category,IdEntity>{


	public List<Map<String,Object>> getCategory(@Param("lang") String lang);
	
	public Integer checkName(@Param("lang") String lang,@Param("name")  String name);

}