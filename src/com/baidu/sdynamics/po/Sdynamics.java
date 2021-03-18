package com.baidu.sdynamics.po;

import java.util.Date;

/**
 * 学院动态
 * @author AUSU
 *
 */
public class Sdynamics {

	private int sid;
	private String stitle;
	private String scontext;
	private int sisdelete;
	private Date stime;
	private String speople;
	
	public String getSpeople() {
		return speople;
	}
	public void setSpeople(String speople) {
		this.speople = speople;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getStitle() {
		return stitle;
	}
	public void setStitle(String stitle) {
		this.stitle = stitle;
	}
	public String getScontext() {
		return scontext;
	}
	public void setScontext(String scontext) {
		this.scontext = scontext;
	}
	public int getSisdelete() {
		return sisdelete;
	}
	public void setSisdelete(int sisdelete) {
		this.sisdelete = sisdelete;
	}
	public Date getStime() {
		return stime;
	}
	public void setStime(Date stime) {
		this.stime = stime;
	}
	@Override
	public String toString() {
		return "Sdynamics [sid=" + sid + ", stitle=" + stitle + ", scontext="
				+ scontext + ", sisdelete=" + sisdelete + ", stime=" + stime
				+ ", speople=" + speople + "]";
	}
}
