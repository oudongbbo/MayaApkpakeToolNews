package com.maya.packtools.builder.base;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


import com.maya.base.utils.LogUtil;


public class BaseUtils {

	
	/**
	 * 获取启动类的名称
	 * @return
	 */
	public static String getGameLaunchActivty(String apkPath,String oldPname){
		LogUtil.showLog("-----------------getGameLaunchActivty---------------------");
		String line = ""; 
		String launchActivityName = "";
		
		StringBuffer buffer = new StringBuffer();
		buffer.setLength(0);
		
		
		buffer.append("aapt d badging ").append(apkPath).append(" | findstr \"launchable-activity\" ");

		try {
			
			Process process = Runtime.getRuntime().exec(buffer.toString());
			
			InputStreamReader isr = new InputStreamReader(process.getInputStream()); 
            BufferedReader br = new BufferedReader(isr); 
             
            Pattern p = Pattern.compile("launchable-activity: name='(.*?)'");
            while ( (line = br.readLine()) != null){ 
            	 
         		Matcher match = p.matcher(line);
         		if (match.find()) {
         			
         			launchActivityName = match.group(1);
         			if (launchActivityName.startsWith(".")) {//不完全的路径补全
         				launchActivityName = oldPname+launchActivityName;
         			}
         			
         			LogUtil.showLog("--> getGameLaunchActivty:"+ launchActivityName +" <--");
         		}
             } 
             
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		if(null == launchActivityName || "".equals(launchActivityName)){
			
			LogUtil.showLog("-->getGameLaunchActivty失败<--");
		}
		
		return launchActivityName;
		
	}
	
	/**
	 * @return
	 */
	public static String getGamePackageName(String apkPath){
		
		LogUtil.showLog("-----------------getGamePackageName---------------------");
		
		String line = ""; 
		String gamePackageName = "";
		
		StringBuffer buffer = new StringBuffer();
		buffer.setLength(0);
		
		buffer.append("aapt d badging ").append(apkPath).append(" | findstr \"package\" ");
		
		try {
			Process process = Runtime.getRuntime().exec(buffer.toString());
			InputStreamReader isr = new InputStreamReader(process.getInputStream()); 
            BufferedReader br = new BufferedReader(isr);
             Pattern p = Pattern.compile("package: name='(.*?)'");
             while ( (line = br.readLine()) != null){
         		Matcher match = p.matcher(line);
         		if (match.find()) {
         			gamePackageName = match.group(1);
         			
         			LogUtil.showLog("-->getGamePackageName:"+ gamePackageName +" <--");
         			break;
         		}
             } 
             isr.close();
             br.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(null == gamePackageName || "".equals(gamePackageName)){
			LogUtil.showLog("-->getGamePackageName：失败<--");
		}
		
		return gamePackageName;
		
	}
	
	
}
