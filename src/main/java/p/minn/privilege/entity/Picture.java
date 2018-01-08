package p.minn.privilege.entity;

import p.minn.common.annotation.LogAnnotation;



/**
 * 
 * @author minn
 * @QQ:3942986006
 *
 */
//@LogAnnotation
public class Picture extends IdEntity{
	
	
	//@LogAnnotation(resourceKey="menu_pId",mkey="RESOURCEPID")
	private Integer categoryid;
	
	//@LogAnnotation(resourceKey="menu_sort")
	private String sort;
	
	
	@LogAnnotation(resourceKey="common_active",mkey="ACTIVETYPE")
	private Integer active;
	
	
	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public Integer getActive() {
		return active;
	}

	public void setActive(Integer active) {
		this.active = active;
	}

	public Integer getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(Integer categoryid) {
		this.categoryid = categoryid;
	}

	
}
