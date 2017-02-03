package com.smallsell.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smallsell.entity.Menu;
import com.smallsell.entity.Role;
import com.smallsell.entity.User;
import com.smallsell.entity.UserRole;
import com.smallsell.service.MenuService;
import com.smallsell.service.UserRoleService;
import com.smallsell.util.StringUtil;
import com.smallsell.vo.ShowMenuVo;

@Service
public class MeunServiceImpl extends BaseService implements MenuService {
	@Autowired
	private UserRoleService userRoleService;
	private static final Logger log = Logger.getLogger(MeunServiceImpl.class);
	public List<Menu> getMenuByRoleIds(List<Integer> roles) {
		if(roles == null || roles.isEmpty()){
			return null;
		}
		List<Menu> menus = menuMapper.getMenusByRoles(roles);
		return menus;
	}

	@Override
	public List<ShowMenuVo> getUserShowMenus(Integer UserId) {
		List<UserRole> roles = userRoleService.getUserRoleByUserId(UserId);
		List<Integer> roleIds = new ArrayList<>();
		for(UserRole userRole : roles){
			roleIds.add(userRole.getRole_id());
		}
		
		//该用户可用菜单
		 List<Menu> menus = getMenuByRoleIds(roleIds);
		//获取父亲的菜单
		 List<Menu> parentMenu = menuMapper.getParentAllMenu(UserId);
		 List<ShowMenuVo> showMenuVos = doGetShowmenuVo(menus, parentMenu);
		return showMenuVos;
	}
	
	//封装菜单vo
	public List<ShowMenuVo> doGetShowmenuVo(List<Menu> userMenus, List<Menu> parentMenus){
		List<ShowMenuVo> showMenuVos = new ArrayList<>();
		for(Menu parentMenu : parentMenus){
			ShowMenuVo showMenuVo = new ShowMenuVo(parentMenu.getId(), parentMenu.getMeun_name(), parentMenu.getUrl(), null);
			List<ShowMenuVo> showMenuVosChild = new ArrayList<>();
			for(Menu chileMenu:userMenus){
				if(parentMenu.getId().equals(chileMenu.getParent_id())){
					showMenuVosChild.add(new ShowMenuVo(chileMenu.getId(),chileMenu.getMeun_name(),chileMenu.getUrl(),null));
				}
				
			}
			showMenuVo.setChildMenu(showMenuVosChild);
			showMenuVos.add(showMenuVo);
		}
		return showMenuVos;
	}

	@Override
	public List<Menu> getMemuNames(String url) {
		Menu menu = new Menu();
		menu.setUrl(url);
		List<Menu> menus = menuMapper.selectMenus(menu);
		if(StringUtil.IsEmpty(menus)){
			return null;
		}
		menu = menus.get(0);
		LinkedList  <Menu> menuNames = new LinkedList <Menu>();
		while(true){
			menuNames.addFirst(menu);
			if(menu.getParent_id().equals(0)){
				return menuNames;
			}
			menu = menuMapper.selectByPrimaryKey(menu.getParent_id());
		}
	}

}
