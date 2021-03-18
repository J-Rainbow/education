package com.baidu.ttwo.po;

import java.util.Date;

/**
 * RATIONAL 教师团队
 * @author AUSU
 *
 */
public class Ttwo {

	private int rid;
	private String rname;
	private String rsuggest;
	private String rphoto;
	private int risdelete;
	private Date rtime;
	private String rpeople;
	public int getrid() {
		return rid;
	}
	public void setrid(int rid) {
		this.rid = rid;
	}
	public String getrname() {
		return rname;
	}
	public void setrname(String rname) {
		this.rname = rname;
	}
	public String getrsuggest() {
		return rsuggest;
	}
	public void setrsuggest(String rsuggest) {
		this.rsuggest = rsuggest;
	}
	public String getrphoto() {
		return rphoto;
	}
	public void setrphoto(String rphoto) {
		this.rphoto = rphoto;
	}
	public int getrisdelete() {
		return risdelete;
	}
	public void setrisdelete(int risdelete) {
		this.risdelete = risdelete;
	}
	public Date getrtime() {
		return rtime;
	}
	public void setrtime(Date rtime) {
		this.rtime = rtime;
	}
	public String getrpeople() {
		return rpeople;
	}
	public void setrpeople(String rpeople) {
		this.rpeople = rpeople;
	}
	@Override
	public String toString() {
		return "Tone [rid=" + rid + ", rname=" + rname + ", rsuggest="
				+ rsuggest + ", rphoto=" + rphoto + ", risdelete=" + risdelete
				+ ", rtime=" + rtime + ", rpeople=" + rpeople + "]";
	}
}
