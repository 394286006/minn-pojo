package p.minn.privilege.entity;

/**
 * 
 * @author minn
 * @QQ:3942986006
 *
 */
public class OperatorLog {

	private Integer id;
	
	private Integer userId;
	
	private String userIp;
	
	private String operatorDate;
	
	private String resId;
	
	private String signature;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserIp() {
		return userIp;
	}

	public void setUserIp(String userIp) {
		this.userIp = userIp;
	}

	public String getOperatorDate() {
		return operatorDate;
	}

	public void setOperatorDate(String operatorDate) {
		this.operatorDate = operatorDate;
	}

	public String getResId() {
		return resId;
	}

	public void setResId(String resId) {
		this.resId = resId;
	}

	public String getSignature() {
		return signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

}
