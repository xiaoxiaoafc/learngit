package com.smallsell.mapper;

import java.util.List;

import com.smallsell.entity.Menu;

public interface MenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);

	/**
	* @author 陈树彪
	* @Title: getMenusByRoles
	* @Description: TODO(根据权限id获取所有菜单)
	* @param @param roles
	* @param @return    设定文件
	* @return List<Menu>    返回类型
	* @throws
	*/ 
	List<Menu> getMenusByRoles(List<Integer> roles);

	/**
	* @author 陈树彪
	* @Title: getParentMenuByUser
	* @Description: TODO(根据用户id获取菜单)
	* @param @param userId
	* @param @return    设定文件
	* @return List<Menu>    返回类型
	* @throws
	*/ 
	List<Menu> getParentAllMenu(Integer userId);

	/**
	* @author 陈树彪
	* @Title: selectMenus
	* @Description: TODO(根据Menu获取菜单)
	* @param @param menu
	* @param @return    设定文件
	* @return List<Menu>    返回类型
	* @throws
	*/ 
	List<Menu> selectMenus(Menu menu);
}