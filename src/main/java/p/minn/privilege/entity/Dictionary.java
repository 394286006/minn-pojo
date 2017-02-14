package p.minn.privilege.entity;

import p.minn.common.annotation.LogAnnotation;

/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 用户
 *
 */
@LogAnnotation
public class Dictionary extends IdEntity {

	@LogAnnotation(resourceKey="dictionary_name")
	private String mkey;
	
	@LogAnnotation(resourceKey="dictionary_val")
	private String val;
	
	private String sort;

	public String getMkey() {
		return mkey;
	}

	public void setMkey(String mkey) {
		this.mkey = mkey;
	}

	public String getVal() {
		return val;
	}

	public void setVal(String val) {
		this.val = val;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}
	
}
