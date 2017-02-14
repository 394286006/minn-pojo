package p.minn.privilege.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import p.minn.common.utils.Page;
import p.minn.privilege.entity.IdEntity;
import p.minn.privilege.entity.OperatorLog;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 操作日志
 */
public interface LogDao extends BaseDao<OperatorLog,IdEntity>{
	
	public List<Map<String,Object>> getLogChangeDetail(@Param("lang") String lang, @Param("id") String id);
	
	public Integer insertOperatorLog(OperatorLog operatorLog);
	
	public void insertOperatorLogDetail(@Param("operatorlogid") int id, @Param("operatorLogDetail") Map<String,String> old);

	public List<Map<String, Object>> getSignature(@Param("lang") String lang);
	
	public void deleteDetail(IdEntity idEntity);
	
}
