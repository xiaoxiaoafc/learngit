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
	* @author ������
	* @Title: getMenusByRoles
	* @Description: TODO(����Ȩ��id��ȡ���в˵�)
	* @param @param roles
	* @param @return    �趨�ļ�
	* @return List<Menu>    ��������
	* @throws
	*/ 
	List<Menu> getMenusByRoles(List<Integer> roles);

	/**
	* @author ������
	* @Title: getParentMenuByUser
	* @Description: TODO(�����û�id��ȡ�˵�)
	* @param @param userId
	* @param @return    �趨�ļ�
	* @return List<Menu>    ��������
	* @throws
	*/ 
	List<Menu> getParentAllMenu(Integer userId);

	/**
	* @author ������
	* @Title: selectMenus
	* @Description: TODO(����Menu��ȡ�˵�)
	* @param @param menu
	* @param @return    �趨�ļ�
	* @return List<Menu>    ��������
	* @throws
	*/ 
	List<Menu> selectMenus(Menu menu);
}