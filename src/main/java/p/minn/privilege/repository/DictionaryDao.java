package p.minn.privilege.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 
 */
public interface DictionaryDao {

	
	public List<Map<String,Object>> query(@Param("lang") String lang,@Param("type") String type);
	
}