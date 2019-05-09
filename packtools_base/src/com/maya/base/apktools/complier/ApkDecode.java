package com.maya.base.apktools.complier;

import java.io.File;

import com.maya.base.utils.StreamController;



public class ApkDecode {
	
	String apktoolPath;
	
	public ApkDecode(String toolPath) {
		apktoolPath = toolPath;
	}
	
	public boolean decode(String apkPath, String tempPath) {

		boolean isSuccess = false;

		System.out.println("反编译：" + apkPath);
		System.out.println("到此目录：" + tempPath);

		File file = new File(tempPath);

		if (!file.exists()) {
			file.mkdirs();
		}

		StringBuffer buffer = new StringBuffer();
		buffer.setLength(0);

		buffer.append("java -jar ")
				.append(apktoolPath)
				.append(" d -f ").append(apkPath).append("  -o  ")
				.append(tempPath);

		System.out.println("反编译命令为："+buffer.toString());

		try {

			Process process = Runtime.getRuntime().exec(buffer.toString());
			StreamController.printStream(process);
			if (process.waitFor() != 0) {
				System.out.println("apk反编译：失败");
				return false;
			}

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		isSuccess = true;

		return isSuccess;
	}
	
}
