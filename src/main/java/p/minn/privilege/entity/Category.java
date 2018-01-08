package p.minn.privilege.entity;

import p.minn.common.annotation.LogAnnotation;



/**
 * 
 * @author minn
 * @QQ:3942986006
 *
 */
//@LogAnnotation
public class Category extends IdEntity{
	
	
	//@LogAnnotation(resourceKey="menu_pId",mkey="RESOURCEPID")
	private Integer pid;
	
	@LogAnnotation(resourceKey="menu_type",mkey="RESOURCETYPE")
	private Integer type;
	
	//@LogAnnotation(resourceKey="menu_sort")
	private String sort;
	
	
	@LogAnnotation(resourceKey="common_active",mkey="ACTIVETYPE")
	private Integer active;
	
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

	public Integer getActive() {
		return active;
	}

	public void setActive(Integer active) {
		this.active = active;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	
}
