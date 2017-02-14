package p.minn.privilege.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import p.minn.common.utils.Page;
import p.minn.privilege.entity.IdEntity;
import p.minn.privilege.entity.PicturePath;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 
 */
//@LogAnnotation(resourceKey="A000A001")
public interface PicturePathDao extends BaseDao<PicturePath,IdEntity>{

	public void setFirstPagePic(PicturePath picturePath);

	public List<Map<String,Object>> getFirstPagePic(String lang);

	public int getFrontTotal(@Param("lang")String lang, @Param("condition")Map<String, String> condition);

	public List<Map<String, Object>> frontQuery(@Param("lang")String lang, @Param("page")Page page,
			@Param("condition")Map<String, String> condition);
	
}