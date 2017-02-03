package com.smallsell.util;

import java.util.Collection;

import org.springframework.util.StringUtils;

public class StringUtil extends StringUtils{
	
	/**
	* @author 陈树彪
	* @Title: notEmpty
	* @Description: TODO(判断集合是否有元素)
	* @param @param collection
	* @param @return    设定文件
	* @return Boolean    返回类型
	* @throws
	*/ 
	public static Boolean IsEmpty(Collection collection){
		if(collection == null || collection.isEmpty()){
			return true;
		}
		return false;
	}
}
