package p.minn.privilege.repository;

import org.apache.ibatis.annotations.Param;

import p.minn.common.annotation.LogAnnotation;
import p.minn.privilege.entity.Globalization;
import p.minn.privilege.entity.IdEntity;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 
 */
public interface GlobalizationDao extends BaseDao<Globalization,IdEntity>{

	@LogAnnotation(resourceKey="common_del")
	public void deleteByTableId(@Param("tableid") String tableid,@Param("tablename") String tablename);
	
	//@LogAnnotation(resourceKey="common_del")
    public void updateByTable(Globalization globalization);
}