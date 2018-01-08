package p.minn.privilege.entity;

import p.minn.common.annotation.LogAnnotation;



/**  
 * 
 * @author minn
 * @QQ:3942986006
 * @comment 第三方帐号
 *
 */
public class AccountThirdPart extends IdEntity{
	
    private Integer accountId;
  
	private String name;
	
	private String type;
	
	private Integer active;
	
	private String mark;
	
    private String secretkey;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

  public Integer getAccountId() {
    return accountId;
  }

  public void setAccountId(Integer accountId) {
    this.accountId = accountId;
  }

  public Integer getActive() {
    return active;
  }

  public void setActive(Integer active) {
    this.active = active;
  }

  public String getMark() {
    return mark;
  }

  public void setMark(String mark) {
    this.mark = mark;
  }

  public String getSecretkey() {
    return secretkey;
  }

  public void setSecretkey(String secretkey) {
    this.secretkey = secretkey;
  }
	
	
}
