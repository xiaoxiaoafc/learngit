package com.smallsell.service;

import java.util.List;

import com.smallsell.entity.Menu;
import com.smallsell.vo.ShowMenuVo;

public interface MenuService {
	/**
	* @author ������
	* @Title: getMenuByRoleIds
	* @Description: TODO(����Ȩ��id����������Ŀ ȥ���ظ�)
	* @param @param roleIds Ȩ��ids
	* @param @return    �趨�ļ�
	* @return List<Menu>    ��������
	* @throws
	*/ 
	List<Menu> getMenuByRoleIds(List<Integer> roleIds);

	/**
	* @author ������
	* @Title: getUserShowMenus
	* @Description: TODO(��ȡ�û���ҳ�ұ߲˵�)
	* @param @param UserId �û�id
	* @param @return    �趨�ļ�
	* @return List<ShowMenuVo>    ��������
	* @throws
	*/ 
	List<ShowMenuVo> getUserShowMenus(Integer UserId);
	
	/**
	* @author ������
	* @Title: getMemuNames
	* @Description: TODO(�о������url����ȡ�ϼ���url)
	* @param @param url
	* @param @return    �趨�ļ�
	* @return List<Menu>    ��������
	* @throws
	*/ 
	List<Menu> getMemuNames(String url);
}
