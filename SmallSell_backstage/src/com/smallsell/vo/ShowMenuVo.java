package com.smallsell.vo;

import java.util.List;
/*
 * Ê×Ò³²Ëµ¥µÄvo
 */
public class ShowMenuVo {
	 private Integer id;
	 private String meun_name;
	 private String url;
	 private List<ShowMenuVo> childMenu;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMeun_name() {
		return meun_name;
	}
	public void setMeun_name(String meun_name) {
		this.meun_name = meun_name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public List<ShowMenuVo> getChildMenu() {
		return childMenu;
	}
	public void setChildMenu(List<ShowMenuVo> childMenu) {
		this.childMenu = childMenu;
	}
	public ShowMenuVo(Integer id, String meun_name, String url, List<ShowMenuVo> childMenu) {
		super();
		this.id = id;
		this.meun_name = meun_name;
		this.url = url;
		this.childMenu = childMenu;
	}
	public ShowMenuVo() {
		super();
	}
	@Override
	public String toString() {
		return "ShowMenuVo [id=" + id + ", meun_name=" + meun_name + ", url=" + url + ", childMenu=" + childMenu + "]";
	}
	
	
	 
}
