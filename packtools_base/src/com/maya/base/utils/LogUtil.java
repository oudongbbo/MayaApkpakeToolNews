package com.maya.base.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class LogUtil  {

	public static void showLog(String msg){
		
		System.out.println(getLogUtilDateTime()+"-->"+msg);
		
	}
	
	public static String getLogUtilDateTime(){
		SimpleDateFormat formater = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return formater.format(new Date());
	}
	
	public enum LogLevel{
		
		LEVEL_1,	
		LEVEL_2,	
		LEVEL_3,
		
	}
	
	public static void showLog(String msg,LogLevel level){
		
		StringBuffer loginfo = new StringBuffer();
		switch (level) {
		case LEVEL_1:
			loginfo.append(">>>>>>>>>>>>>>>").append(msg).append("<<<<<<<<<<<<<<<");
			
			break;
			
		case LEVEL_2:
			loginfo.append("<----->").append(msg).append("<--------->");
			
			break;
			
		case LEVEL_3:
			loginfo.append("<-->").append(msg).append("<-->");
			
			break;
			
		default:
			
			loginfo.append(msg);
			
			break;
		}
			
		LogUtil.showLog(loginfo.toString());
		
	}
	
	
	
	
}