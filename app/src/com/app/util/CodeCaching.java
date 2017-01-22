package com.app.util;

import java.util.HashMap;
import java.util.Map;

public class CodeCaching {
	private static Map<String, String []> codeMap = new HashMap<String, String[]>();
	public static Map<String, String []> getCodeCachingMapString(){
		return codeMap;
	}
}
