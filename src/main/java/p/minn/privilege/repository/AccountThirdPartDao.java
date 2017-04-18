package p.minn.privilege.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import p.minn.privilege.entity.AccountThirdPart;
import p.minn.privilege.entity.IdEntity;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @omment 
 */
//@LogAnnotation(resourceKey="A000A000")
public interface AccountThirdPartDao extends BaseDao<AccountThirdPart,IdEntity>{

	public AccountThirdPart findByName(@Param("name") String name);
	
	public  List<Map<String,Object>> getThirdParts(@Param("lang")  String lang,@Param("accountId")  Integer accountId);

	public  List<Map<String,Object>> getLoginThirdParts(@Param("lang")  String lang);
}