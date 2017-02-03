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
* @author ������
* @Title: listToString
* @Description: TODO(Listת��Ϊ�ַ���������ָ���)
* @param @param list
* @param @param separator �ָ��
* @param @return    �趨�ļ�
* @return String    ��������
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
