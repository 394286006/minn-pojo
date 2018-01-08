package p.minn.privilege.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import p.minn.privilege.entity.Dictionary;
import p.minn.privilege.entity.IdEntity;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 
 */
public interface DictionaryDao extends BaseDao<Dictionary,IdEntity>{

	
	public List<Map<String,Object>> getDic(@Param("lang") String lang,@Param("type") String type);
	
	public List<Map<String,Object>> getDicType(@Param("lang") String lang);

	public int checkType(Dictionary dictionary);
	
}