package com.baidu.user.po;

import java.util.Date;
import java.util.List;

public class User{
	
	private int uid;
	private String uname;
	private String upsw;
	private Date utime;
	private String upeople;
	private int uisdelete;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpsw() {
		return upsw;
	}
	public void setUpsw(String upsw) {
		this.upsw = upsw;
	}
	public Date getUtime() {
		return utime;
	}
	public void setUtime(Date utime) {
		this.utime = utime;
	}
	public String getUpeople() {
		return upeople;
	}
	public void setUpeople(String upeople) {
		this.upeople = upeople;
	}
	public int getUisdelete() {
		return uisdelete;
	}
	public void setUisdelete(int uisdelete) {
		this.uisdelete = uisdelete;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upsw=" + upsw
				+ ", utime=" + utime + ", upeople="
				+ upeople + ", uisdelete=" + uisdelete + "]";
	}
}
