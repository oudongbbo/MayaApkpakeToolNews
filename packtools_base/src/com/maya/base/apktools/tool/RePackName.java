package com.maya.base.apktools.tool;

import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.maya.base.apktools.complier.ApkBuild;
import com.maya.base.apktools.complier.ApkDecode;
import com.maya.base.utils.FileUtil;


public class RePackName {

	private  String apkSourcePath;// apk绝对路径
	private  String apkSouceName;// apk文件名
	private  String apkDecodePath;// 反编译文件目录
	private  String packNameNew;// 新包名

	public String apktoolPath = "";//apktool的路径
	
	
	public RePackName() {
	}

	public void setApktoolPath(String apktoolPath){
		this.apktoolPath = apktoolPath;
	}
	
	public  void ChangePackageName(String apkPath, String packName) {
		
		apkSourcePath = apkPath;
		packNameNew = packName;
		
		if (apktoolPath == null || !"".equals(apktoolPath)) {
			System.out.println("程序没有设定apktool路径，无法继续");
			return;
		}
		
		if (apkSourcePath == null || "".equals(apkSourcePath)) {
			System.out.println("apk路径为空");
			return;
			
		}
		if (!apkSourcePath.endsWith(".apk")) {
			System.out.println("不是一个apk文件");
			return;
		}
		if (packNameNew == null || "".equals(packNameNew)) {
			System.out.println("包名为空");
			return;
		}
		
		File sourceFile = new File(apkSourcePath);
		if (!sourceFile.exists()) {
			System.out.println("apk文件不存在");
			return;
		} else {
			apkSouceName = sourceFile.getName();
			apkDecodePath = apkSourcePath.substring(0,apkSourcePath.lastIndexOf("."));
		}
		
		//运行程序
		run(apkSourcePath, packNameNew);
	}

	public  void run(String apkSourcePath, String packName) {

		System.out.println("apk源路径:" + apkSouceName);
		System.out.println("apk反编译路径:" + apkDecodePath);
		System.out.println("新的包名:" + packNameNew);

		decode();

		work(apkSourcePath, packName);

		build();

		delete();
	}

	private  void decode() {
		ApkDecode apkDecode = new ApkDecode(apktoolPath);
		apkDecode.decode(apkSourcePath, apkDecodePath);
	}

	public  void work(String decodePath,String pNameNew) {
		
		System.out.println("--->开始修改包名<---");
		
		String manifestXml = decodePath + File.separator + "AndroidManifest.xml";
		String manifestContent = FileUtil.read(manifestXml);
		
		System.out.println("AndroidManifest.xml的路径在:" + manifestXml);
		
		if (pNameNew != null && !"".equals(pNameNew)) { 

			Pattern p = Pattern.compile("package=\"(.*?)\"");
			Matcher m = p.matcher(manifestContent);
			m.find();
			//找到旧包名
			String pNameOld = m.group(1);
			//1.替换第一个包名
			manifestContent = manifestContent.replaceFirst(pNameOld,pNameNew); 
			//2.补全以.开头的类名
			manifestContent = manifestContent.replaceAll("android:name=\"\\.","android:name=\"" + pNameOld + "\\.");
			//3.替换android:authorities
			 p = Pattern.compile("android:authorities=\"(.*?)\"");
			 m = p.matcher(manifestContent);
			if (m.find()) {
				String authorities = m.group(1);
				String authorities_new = authorities.replace(pNameOld,pNameNew);
				manifestContent = manifestContent.replaceFirst(authorities,authorities_new);
			}
			//4.修改第三方权限
//			android:name="com.mihua.ltzh.starjoys.permission
			//修改极光推送
			if (manifestContent.contains("JPUSH_MESSAGE")) {
				p = Pattern.compile("android:name=\"(.*?).permission.JPUSH_MESSAGE");
				 m = p.matcher(manifestContent);
				if (m.find()) {
					String permission_pkg = m.group(1);
					if ("android".equals(permission_pkg)) {
						//原生的权限不用管
						//android:name="android.permission
					}else {
						//非原生权限
						manifestContent = manifestContent.replaceAll("android:name=\""+permission_pkg+".permission.JPUSH_MESSAGE" ,"android:name=\""+pNameNew+".permission.JPUSH_MESSAGE");
					}
				}
			}
			
			
			//5.写入新的文件
			FileUtil.write(manifestXml, manifestContent);
		}
	}

	private  void build() {
		
		System.out.println("--->回编译开始<---");
		
		ApkBuild builder = new ApkBuild(apktoolPath);
		builder.build(apkDecodePath);

		String savePath = new File(apkDecodePath).getParentFile().getAbsolutePath();
		String distPath = apkDecodePath + File.separator + "dist" + File.separator;
		
		File distFile = new File(distPath + apkSouceName);
		File targetFile = new File(savePath + File.separator + packNameNew + "_"+ apkSouceName);
		FileUtil.copyFile(distFile, targetFile);
	}

	private void delete() {
		System.out.println("删除反编译的目录");
		FileUtil.delDir(new File(apkDecodePath));
	}
}
