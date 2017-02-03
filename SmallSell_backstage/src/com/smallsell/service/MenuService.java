package com.smallsell.service;

import java.util.List;

import com.smallsell.entity.Menu;
import com.smallsell.vo.ShowMenuVo;

public interface MenuService {
	/**
	* @author 陈树彪
	* @Title: getMenuByRoleIds
	* @Description: TODO(根据权限id加载所有栏目 去除重复)
	* @param @param roleIds 权限ids
	* @param @return    设定文件
	* @return List<Menu>    返回类型
	* @throws
	*/ 
	List<Menu> getMenuByRoleIds(List<Integer> roleIds);

	/**
	* @author 陈树彪
	* @Title: getUserShowMenus
	* @Description: TODO(获取用户首页右边菜单)
	* @param @param UserId 用户id
	* @param @return    设定文件
	* @return List<ShowMenuVo>    返回类型
	* @throws
	*/ 
	List<ShowMenuVo> getUserShowMenus(Integer UserId);
	
	/**
	* @author 陈树彪
	* @Title: getMemuNames
	* @Description: TODO(感觉传入的url来获取上级的url)
	* @param @param url
	* @param @return    设定文件
	* @return List<Menu>    返回类型
	* @throws
	*/ 
	List<Menu> getMemuNames(String url);
}
