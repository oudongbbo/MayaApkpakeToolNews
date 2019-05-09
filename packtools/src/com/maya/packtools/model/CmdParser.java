package com.maya.packtools.model;

import java.io.File;

import com.maya.base.utils.LogUtil;

public class CmdParser {

	public String apkName;
	public String apkPath;
	public String apkParentPath;

	public CmdParser(String args[]) {
		
		for (int i = 0; i < args.length; i++) {
			System.out.println("当前第"+i+"参数："+args[i]);
		}
		
		apkPath = args[0].trim();
		
		LogUtil.showLog(">>>>>apk的绝对路径："+apkPath+"<<<<<");
		
		File apk = new File(apkPath);
		
		apkName = apk.getName();
		apkParentPath = apk.getParentFile().getAbsolutePath();
		
		if (null == apkPath || "".equals(apkPath)) {
			
			LogUtil.showLog("apkPath路径为空，现在退出");
			
			System.exit(0);
			
		}else {
			if (apkPath.contains("(")||apkPath.contains(")")) {
				LogUtil.showLog("!!!!!!!!!-----apkPath不能含有括号-(-)-请删除----!!!!!!!");
				System.exit(0);
			}
		}
	}
	
	
}
