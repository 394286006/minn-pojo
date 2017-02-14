package p.minn.privilege.entity;

import p.minn.common.annotation.LogAnnotation;



/**
 * 
 * @author minn
 * @QQ:3942986006
 *
 */
//@LogAnnotation
public class PicturePath extends IdEntity{
	
	
	//@LogAnnotation(resourceKey="menu_pId",mkey="RESOURCEPID")
	private Integer pictureid;
	
	private String imgpath;
	
	private String pictype;
	
	private String imgname;
	
	private String sourcename;
	
	private Integer isfirst;
	
	
	public Integer getPictureid() {
		return pictureid;
	}

	public void setPictureid(Integer pictureid) {
		this.pictureid = pictureid;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public String getPictype() {
		return pictype;
	}

	public void setPictype(String pictype) {
		this.pictype = pictype;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public String getSourcename() {
		return sourcename;
	}

	public void setSourcename(String sourcename) {
		this.sourcename = sourcename;
	}

	public Integer getIsfirst() {
		return isfirst;
	}

	public void setIsfirst(Integer isfirst) {
		this.isfirst = isfirst;
	}

	
}
