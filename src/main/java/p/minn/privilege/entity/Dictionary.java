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
	
	private String var1;
	
	private String var2;
	
	private String var3;
	
	private String var4;
	
	private String var5;

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

  public String getVar1() {
    return var1;
  }

  public void setVar1(String var1) {
    this.var1 = var1;
  }

  public String getVar2() {
    return var2;
  }

  public void setVar2(String var2) {
    this.var2 = var2;
  }

  public String getVar3() {
    return var3;
  }

  public void setVar3(String var3) {
    this.var3 = var3;
  }

  public String getVar4() {
    return var4;
  }

  public void setVar4(String var4) {
    this.var4 = var4;
  }

  public String getVar5() {
    return var5;
  }

  public void setVar5(String var5) {
    this.var5 = var5;
  }
	
	
	
}
