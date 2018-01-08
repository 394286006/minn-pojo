package p.minn.privilege.entity;

import p.minn.common.annotation.LogAnnotation;


/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 角色
 *
 */
@LogAnnotation
public class Role extends IdEntity{

	@LogAnnotation(resourceKey="role_name_en")
	private String nameEn;
	
	@LogAnnotation(resourceKey="role_name_zh")
	private String nameZh;
	
	@LogAnnotation(resourceKey="role_comment")
	private String comment;
	
	@LogAnnotation(resourceKey="role_code")
	private String code;
	
	@LogAnnotation(resourceKey="common_active",mkey="ACTIVETYPE")
	private Integer active;
	
	@LogAnnotation(resourceKey="role_sort")
	private Integer sort;
	
	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getActive() {
		return active;
	}

	public void setActive(Integer active) {
		this.active = active;
	}


	public String getNameEn() {
		return nameEn;
	}

	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}

	public String getNameZh() {
		return nameZh;
	}

	public void setNameZh(String nameZh) {
		this.nameZh = nameZh;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
	
	
	
}
