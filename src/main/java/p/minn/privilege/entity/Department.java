package p.minn.privilege.entity;

import p.minn.common.annotation.LogAnnotation;



/**
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 
 *
 */
@LogAnnotation
public class Department extends IdEntity{
	
	
	private Integer pId;
	
	//@LogAnnotation(resourceKey="menu_code")
	private String code;
	
	private String name;
	
	private Integer active;

  public Integer getpId() {
    return pId;
  }

  public void setpId(Integer pId) {
    this.pId = pId;
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

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }
	
}
