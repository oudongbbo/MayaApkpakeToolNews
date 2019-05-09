package com.maya.base.apktools.complier;

import com.maya.base.utils.StreamController;

public class ApkBuild {

	String apktoolPath ;
	
	public ApkBuild(String toolPath) {
		apktoolPath = toolPath;
	}

	public boolean build(String buildPath) {

		System.out.println("回编译此目录:"+buildPath);
		
		StringBuffer buffer = new StringBuffer();
		buffer.setLength(0);
		buffer.append("java -jar ")
				.append(apktoolPath)
				.append(" b ")
				.append(buildPath);

		try {
			Process process = Runtime.getRuntime().exec(buffer.toString());
			StreamController.printStream(process);
			
			if (process.waitFor() != 0) {
				System.out.println("回编译：失败");
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

		return true;
		
	}

}
