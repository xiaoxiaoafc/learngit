package com.smallsell.util;

import java.util.Collection;

import org.springframework.util.StringUtils;

public class StringUtil extends StringUtils{
	
	/**
	* @author ������
	* @Title: notEmpty
	* @Description: TODO(�жϼ����Ƿ���Ԫ��)
	* @param @param collection
	* @param @return    �趨�ļ�
	* @return Boolean    ��������
	* @throws
	*/ 
	public static Boolean IsEmpty(Collection collection){
		if(collection == null || collection.isEmpty()){
			return true;
		}
		return false;
	}
}
