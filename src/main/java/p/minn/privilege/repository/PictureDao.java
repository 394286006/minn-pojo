package p.minn.privilege.repository;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import p.minn.common.utils.Page;
import p.minn.privilege.entity.IdEntity;
import p.minn.privilege.entity.Picture;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 
 */
//@LogAnnotation(resourceKey="A000A001")
public interface PictureDao extends BaseDao<Picture,IdEntity>{

	public Integer checkName(@Param("lang") String lang,@Param("name")  String name);

}