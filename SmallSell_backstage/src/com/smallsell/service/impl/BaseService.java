package com.smallsell.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smallsell.mapper.MenuMapper;
import com.smallsell.mapper.UserMapper;
import com.smallsell.mapper.UserRoleMapper;

@Service
public class BaseService {
   @Autowired protected UserMapper userMapper;
   @Autowired protected MenuMapper menuMapper;
   @Autowired protected UserRoleMapper userRoleMapper;
   
   /**
* @author 陈树彪
* @Title: listToString
* @Description: TODO(List转换为字符串并加入分隔符)
* @param @param list
* @param @param separator 分割符
* @param @return    设定文件
* @return String    返回类型
* @throws
*/ 
public String listToString(List list, char separator) {  
	    StringBuilder sb = new StringBuilder();  
	    for (int i = 0; i < list.size(); i++) {  
	        sb.append(list.get(i)).append(separator);  
	    }  
	    return list.isEmpty()?"":sb.toString().substring(0, sb.toString().length() - 1);  
	}  
}
