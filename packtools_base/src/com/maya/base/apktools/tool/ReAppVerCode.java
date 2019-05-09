package com.maya.base.apktools.tool;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.maya.base.utils.FileUtil;


public class ReAppVerCode {

	public  String apkSourcePath;
	public  String apkSouceName;// apk文件名
	public  String decodePath;// apk反编译路径
	public  String newVersionCode;//apk新版本号

	public  void main(String[] args) {

	}

	public void changeAppVersionName(String apkPath, String versionName){

		apkSourcePath = apkPath;
		newVersionCode = versionName;

		if (apkPath == null || "".equals(apkPath)) {
			System.out.println("apk路径为空");
			return;
		} else if (!apkPath.endsWith(".apk")) {
			System.out.println("不是一个apk文件");
			return;
		}

		if (newVersionCode == null || "".equals(newVersionCode)) {
			System.out.println("版本名为空");
			return;
		}

		run(apkPath, newVersionCode);
	}
	
	public  void run(String apkSourcePath, String versionName) {

		File sourceFile = new File(apkSourcePath);
		if (!sourceFile.exists()) {
			System.out.println("apk源文件夹不存在");
			return;
		} else {
			apkSouceName = sourceFile.getName();
			decodePath = apkSourcePath.substring(0, apkSourcePath.lastIndexOf("."));
		}

		System.out.println("souceName:" + apkSouceName);
		System.out.println("decodePath:" + decodePath);
		System.out.println("appNameNew:" + versionName);

		decode();// 反编译

		work(decodePath, newVersionCode);// 修改版本名

		build();// 回编译、处理文件

		delete();// 删除反编译后的残留文件
	}

	private  void decode() {
//		ApkDecode.decode(apkSourcePath, decodePath);
	}

	private  void build() {
		System.out.println("-->回编译编译开始<---");
//		ApkBuild.build(decodePath);

		String distPath = decodePath + File.separator + "dist" + File.separator;
		String savePath = new File(decodePath).getParentFile().getAbsolutePath();
		File distFile = new File(distPath + apkSouceName);
		File targetFile = new File(savePath + File.separator + newVersionCode + "_" + apkSouceName);

		System.out.println("-->distFile=" + distFile.getAbsolutePath() + "--targetFile=" + targetFile.getAbsolutePath() + "<---");

		FileUtil.copyFile(distFile, targetFile);

		System.out.println("-->回编译编译完成<---");
	}

	private  void delete() {
		System.out.println("---->删除反编译文件<--");
		FileUtil.delDir(new File(decodePath));
	}

	public void work(String decodePath,String versionCode) {
		
		System.out.println("-->修改版本号，开始<---");
		
		//--------------------------------------------- 解析apktool.yml--------------------------------------------
		String apktoolyml = decodePath + File.separator + "apktool.yml";

		//高版本的apktool 需要屏蔽的字段有
		// "- assets/"  "- res/drawable"
		//- jpg
		//- png
		//
		String[] keywords = {"- assets/","- res/drawable"};
		String apktoolymlContent = FileUtil.readExceptCotent(apktoolyml,keywords);
//		String apktoolymlContent = FileUtil.read(apktoolyml);
		
		System.out.println("apktoolyml:" + apktoolyml);
		System.out.println("获取的apktool.yml的内容:\n" + apktoolymlContent);

		if (apktoolymlContent.contains("versionCode: '")) {
			// 正则找到versionName
			Pattern p = Pattern.compile("versionCode: '(.*?)'");
			Matcher m = p.matcher(apktoolymlContent);
			m.find();

			//默认情况
			String verCodeOld = m.group(1);
			if (!versionCode.equals(verCodeOld)) {
				apktoolymlContent = apktoolymlContent.replaceAll("versionCode: '" + verCodeOld + "'","versionCode: '" + versionCode + "'");
			}
		
		}else if (apktoolymlContent.contains("versionCode")) {
			//如果报错，说明没找到，则不带''，则换一种读取方式
			String oldVersion = read(apktoolyml);
			if (!versionCode.equals(oldVersion)) {
				apktoolymlContent = apktoolymlContent.replaceAll("versionCode: " + oldVersion, "versionCode: '"+ versionCode+"'");
			}
		}
		//重新写入数据
		FileUtil.write(apktoolyml, apktoolymlContent);
		
		//---------------------------------------------解析AndroidManifest.xml------------------------------------------------------------------
		String manifestXml = decodePath + File.separator + "AndroidManifest.xml";
		String manifestXmlContent = FileUtil.read(manifestXml);
		System.out.println("manifestXml:" + manifestXml);
		
		if (manifestXmlContent.contains("versionCode=")) {

			// 正则找到versionName
			Pattern p = Pattern.compile("versionCode=\"(.*?)\"");
			Matcher m = p.matcher(manifestXmlContent);
			m.find();
			//默认情况
			String 	oldVersionCode = m.group(1);
			if (!versionCode.equals(oldVersionCode)) {
				manifestXmlContent = manifestXmlContent.replaceAll("versionCode=\"" + oldVersionCode + "\"","versionCode=\"" + versionCode + "\"");
			}
		
		}
				
		//重新写入数据
		FileUtil.write(manifestXml, manifestXmlContent);
	}

	/**
	 * 
	 * @param filePath
	 * @return
	 */
	public  String read(String filePath) {
		
		BufferedReader br = null;
		String line = null;
		StringBuffer buf = new StringBuffer();

		try {
			br = new BufferedReader(new InputStreamReader(new FileInputStream(filePath),"UTF-8"));

			while ((line = br.readLine()) != null) {
				if (line.trim().contains("versionCode:")) {
					return line.trim().substring("versionCode:".length(), line.trim().length()).trim();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					br = null;
				}
			}
		}

		return buf.toString();
	}
	



	
}
