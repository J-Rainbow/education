package com.baidu.tnews.po;

import java.util.Date;

/**
 * 行业新闻
 * @author AUSU
 *
 */
public class Tnews {
	
	private int tid;
	private String ttitle;
	private String tcontext;
	private int tisdelete;
	private Date ttime;
	private String tpeople;
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTtitle() {
		return ttitle;
	}
	public void setTtitle(String ttitle) {
		this.ttitle = ttitle;
	}
	public String getTcontext() {
		return tcontext;
	}
	public void setTcontext(String tcontext) {
		this.tcontext = tcontext;
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
		return "Tnews [tid=" + tid + ", ttitle=" + ttitle + ", tcontext="
				+ tcontext + ", tisdelete=" + tisdelete + ", ttime=" + ttime
				+ ", tpeople=" + tpeople + "]";
	}
}
