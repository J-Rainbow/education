package com.baidu.enroll.po;

import java.util.Date;

/**
 * 用户报名
 * @author AUSU
 *
 */
public class Enroll {

	private int eid;
	private String ename;
	private String ephone;
	private int eqq;
	private String ecourse;
	private int eisdelete;
	private Date etime;
	private String epeople;
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEphone() {
		return ephone;
	}
	public void setEphone(String ephone) {
		this.ephone = ephone;
	}
	public int getEqq() {
		return eqq;
	}
	public void setEqq(int eqq) {
		this.eqq = eqq;
	}
	public String getEcourse() {
		return ecourse;
	}
	public void setEcourse(String ecourse) {
		this.ecourse = ecourse;
	}
	public int getEisdelete() {
		return eisdelete;
	}
	public void setEisdelete(int eisdelete) {
		this.eisdelete = eisdelete;
	}
	public Date getEtime() {
		return etime;
	}
	public void setEtime(Date etime) {
		this.etime = etime;
	}
	public String getEpeople() {
		return epeople;
	}
	public void setEpeople(String epeople) {
		this.epeople = epeople;
	}
	@Override
	public String toString() {
		return "Enroll [eid=" + eid + ", ename=" + ename + ", ephone=" + ephone
				+ ", eqq=" + eqq + ", ecourse=" + ecourse + ", eisdelete="
				+ eisdelete + ", etime=" + etime + ", epeople=" + epeople + "]";
	}
	
}
