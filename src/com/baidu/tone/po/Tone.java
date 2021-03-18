package com.baidu.tone.po;

import java.util.Date;

/**
 * 信息安全教师团队
 * @author AUSU
 *
 */
public class Tone {

	private int tid;
	private String tname;
	private String tsuggest;
	private String tphoto;
	private int tisdelete;
	private Date ttime;
	private String tpeople;
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTsuggest() {
		return tsuggest;
	}
	public void setTsuggest(String tsuggest) {
		this.tsuggest = tsuggest;
	}
	public String getTphoto() {
		return tphoto;
	}
	public void setTphoto(String tphoto) {
		this.tphoto = tphoto;
	}
	public int getTisdelete() {
		return tisdelete;
	}
	public void setTisdelete(int tisdelete) {
		this.tisdelete = tisdelete;
	}
	public Date getTtime() {
		return ttime;
	}
	public void setTtime(Date ttime) {
		this.ttime = ttime;
	}
	public String getTpeople() {
		return tpeople;
	}
	public void setTpeople(String tpeople) {
		this.tpeople = tpeople;
	}
	@Override
	public String toString() {
		return "Tone [tid=" + tid + ", tname=" + tname + ", tsuggest="
				+ tsuggest + ", tphoto=" + tphoto + ", tisdelete=" + tisdelete
				+ ", ttime=" + ttime + ", tpeople=" + tpeople + "]";
	}
}
