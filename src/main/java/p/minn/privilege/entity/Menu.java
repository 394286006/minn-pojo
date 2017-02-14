package p.minn.privilege.entity;

import p.minn.common.annotation.LogAnnotation;



/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 菜单
 *
 */
@LogAnnotation
public class Menu extends IdEntity{
	
	@LogAnnotation(resourceKey="menu_name_zh")
	private String nameZh;
	
	@LogAnnotation(resourceKey="menu_name_en")
	private String nameEn;
	
	@LogAnnotation(resourceKey="menu_url")
	private String url;
	
	@LogAnnotation(resourceKey="menu_pId",mkey="RESOURCEPID")
	private Integer pId;
	
	@LogAnnotation(resourceKey="menu_type",mkey="RESOURCETYPE")
	private Integer type;
	
	@LogAnnotation(resourceKey="menu_sort")
	private String sort;
	
	@LogAnnotation(resourceKey="menu_code")
	private String code;
	
	@LogAnnotation(resourceKey="menu_urltype",mkey="RESOURCEURLTYPE")
	private Integer urlType;
	
	@LogAnnotation(resourceKey="common_active",mkey="ACTIVETYPE")
	private Integer active;
	
	public String getNameZh() {
		return nameZh;
	}

	public void setNameZh(String nameZh) {
		this.nameZh = nameZh;
	}

	public String getNameEn() {
		return nameEn;
	}

	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getpId() {
		return pId;
	}

	public void setpId(Integer pId) {
		this.pId = pId;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getUrlType() {
		return urlType;
	}

	public void setUrlType(Integer urlType) {
		this.urlType = urlType;
	}

	public Integer getActive() {
		return active;
	}

	public void setActive(Integer active) {
		this.active = active;
	}
	
	
	
}
