package com.maya.base.apktools.tool;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.maya.base.utils.FileUtil;
import com.maya.base.utils.SystemUtil;
import com.maya.base.utils.RarUtil;


public class ReApkIcon {

	
	//1.通过aapt获取icon名称和在apk中的路径
	//2.读取新的icon路径
	//3.删除旧的icon
	//4.添加新的icon
	
	public static void main(String[] args) {

		 String apkPath = args[0];
		 String iconPath = args[1];
		 
		 System.out.println(" apkPath="+apkPath);
		 System.out.println("iconPath="+iconPath);
		 
		 changeNewIcon(apkPath, iconPath);
		 
	}
	
	public static boolean changeNewIcon(String apkPath,String iconPath){
		
		System.out.println(">------------开始替换icon---------------<");
		
		//0.先处理apk文件 和icon是否为空
		if (apkPath ==null || "".equals(apkPath)) {
			System.out.println("apk路径为空");
			return false;
		}else if (!apkPath.endsWith(".apk")) {
			System.out.println("不是一个apk文件");
			return false;
		}
		
		if (iconPath ==null || "".equals(iconPath)) {
			System.out.println("icon路径为空");
			return false;
		}
		
		File apkFile = new File(apkPath);
		File iconFileSoure = new File(iconPath);	//icon源目录

		if (!apkFile.exists()) {
			System.out.println("apk文件不存在");
			return false;
		}
		
		if (!iconFileSoure.exists()) {
			System.out.println("icon文件不存在");
			return false;
		}
		
		System.out.println("apk路径是:"+apkPath);
		System.out.println("icon路径是:"+iconPath);
		
		//1.获取icon路径
		List<String> oldIconPaths = getIconList(apkPath);
		
		if (oldIconPaths==null || oldIconPaths.size()==0) {
			System.out.println("获取icon路径集合，为空，或者大小为0");
			return false;
		}
	
		//2.特殊处理res/drawable/ 下的icon
		//获取icon名称
		String iconName = getIconName(oldIconPaths.get(0));
		oldIconPaths.add("res"+File.separator+"drawable"+File.separator+iconName);
		
		//3.处理每一个icon的替换逻辑
		String apkRoot = apkFile.getParent();
		
		for (int i = 0; i < oldIconPaths.size(); i++) {
			
			String iconNamePath = oldIconPaths.get(i);
			
			System.out.println(">------------处理第"+i+"个---------------<");
			
			//1.删除旧的icon	
			boolean isDeleteSuccess = RarUtil.deleteFile(apkPath, iconNamePath);

			//2.复制新的icon到apk的根目录
			 if (isDeleteSuccess) {
				 //只有删除成功了，才表示确实存在
				 String iconPathTemp = apkRoot+File.separator+iconNamePath;
					File iconFileTemp = new File(iconPathTemp);
					File iconFileTempFather = iconFileTemp.getParentFile();
					if (!iconFileTempFather.exists()) {
						//先创建icon的父目录
						iconFileTempFather.mkdirs();
					}
					if (!iconFileTemp.exists()) {
						try {
							iconFileTemp.createNewFile();
						} catch (IOException e) {
							e.printStackTrace();
							System.out.println("创建文件失败"+iconFileTemp.getAbsolutePath());
							return false;
						}
					}
				 FileUtil.copyFile(iconFileSoure, iconFileTemp);
			 }
			
		}
		
		//4.添加新的icon
		 String resPath = apkRoot+File.separator+"res";
		 RarUtil.addNewFile2Rar(apkPath, resPath);
		
		//5.删除临时icon
		FileUtil.delDir(new File(resPath));
		
		System.out.println(">------------替换icon结束---------------<");
		
		return true;
		
	}
	
	
	public static String getIconName(String iconPath) {
		String iconName = "";
		if (iconPath != null && !"".equals(iconPath)) {
			iconName = iconPath.substring(iconPath.lastIndexOf(File.separator) + 1);
			System.out.println("获取icon名为" + iconName);
		}else {
			System.out.println("传进来的icon路径为空" + iconName);
		}
		return iconName;
	}
	
	
	public static List<String> getIconList(String apkPath){
		
		System.out.println("-----------------getIconList---------------------");
		
		List<String> iconPaths = new ArrayList<String>();
		
		String line = ""; 
		String iconPath = "";
		
		StringBuffer buffer = new StringBuffer();
		buffer.setLength(0);
		
		
		buffer.append("aapt  d badging ").append(apkPath);
		
		try {
			Process process = Runtime.getRuntime().exec(buffer.toString());
			
			InputStreamReader isr = new InputStreamReader(process.getInputStream()); 
            BufferedReader br = new BufferedReader(isr);
            
            
             while ( (line = br.readLine()) != null){
            	 //如果有application-icon，则可以获取icon的路径
            	 if (line.contains("application-icon")) {
            		Pattern p = Pattern.compile("'(.*?)'");
            		Matcher match = p.matcher(line);
              		if (match.find()) {
              			iconPath = match.group(1);
              			if (iconPath!=null || !"".equals(iconPath)) {
              				//不为空，才添加
              				if (SystemUtil.isWindowsOS()) {
								iconPaths.add(iconPath.replace("/", "\\"));
							}else {
								iconPaths.add(iconPath);
							}
						}
              			System.out.println("-->getIconPath:"+ iconPath +" <--");
              		}
				}
         		
             } 
             isr.close();
             br.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(iconPaths.size()==0){
			System.out.println("-->getIconList：失败<--");
		}else {
			System.out.println("-->getIconList="+iconPaths.size());
		}
		
		return iconPaths;
		
	}
}
