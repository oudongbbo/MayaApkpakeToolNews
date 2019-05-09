package com.maya.packtools.model;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.maya.packtools.builder.Platforms;
import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.base.utils.RarUtil;
import com.maya.packtools.config.Common;

public class ApkParser {

	public static final String APK_SUFFIX=".apk";
	
	public String apkName;
	public String apkPreName;
	public String apkPath;
	public String apkParentPath;
	
	public String apkOutputParentPath;//输入父目录
	
	public String gameId ="";
	public String gameName="LY";//默认联运游戏

	public boolean isDudai = false;//是否独代游戏
	public boolean isReplaceRFiles = false;  //是否需要替换包名目录下R文件
	public boolean isDeleteDecodeFile = true;  //是否删除反编译的目录
	
	public String sdkName="";//渠道名称
	public List<String> sdkNames;//所有的渠道名称，选择all时才有
	public int currentSdkNo = Platforms.SDK_UNKNOWN;//当前正在运行的渠道号
	public String currentSdkName="";//当前运行的渠道名称，真正起作用的字段

	public String operator ="User";//操作者
	
	public ApkParser(CmdParser parser) {
		
		apkName = parser.apkName;
		apkPreName = apkName.substring(0, apkName.lastIndexOf("."));
		apkPath = parser.apkPath;
		apkParentPath = parser.apkParentPath;
		//解析GID
		gameId = parseGameID();
	}
	

	public void isReplaceRFiles(String filename){
		
		String tagName = filename.substring(filename.lastIndexOf("_"));
		LogUtil.showLog("查看是否需要替换R文件的标识：" + tagName+ "是否等于_rr.apk");

		if (("_rr" + APK_SUFFIX).equals(tagName)) {		
			isReplaceRFiles = true;
		} else {
			isReplaceRFiles = false;
		}
	}
	
//	public List<String> getPlatformsByGameName(String name){
//
//		List<String> sdkNums = new ArrayList<String>() ;
//
//		String targetProperPath = Common.SDKS_CONFIGS +"Dudai"+ File.separator + name+File.separator + gameId ;
//
//		File file = new File(targetProperPath);
//		if (file.exists()) {
//			File[] files = file.listFiles();
//			for (File temp : files) {
//				if (temp.isFile() ) {
//					String tempName = temp.getName();
//					if (tempName.endsWith(".cfg")) {
//						String tempSdkName = tempName.replaceAll(".cfg", "");
//						sdkNums.add(tempSdkName);
//						LogUtil.showLog("->读取到的渠道有："+tempSdkName);
//					}
//				}
//			}
//		}else {
//			LogUtil.showLog(""+name+"没有配置文件，请查看："+targetProperPath);
//		}
//
//
//		return sdkNums;
// 	}
	
	public List<String> getPlatformsFromConfig(ApkParser apkParser){
		
		List<String> sdkNames = new ArrayList<String>() ;
		String targetProperPath;
		if (apkParser.isDudai) {
			//独代游戏，增加一层独代名称
			targetProperPath = Common.SDKS_CONFIGS +"Dudai"+ File.separator + apkParser.gameName + File.separator + gameId ;
		}else {
			//联运游戏
			targetProperPath = Common.SDKS_CONFIGS +"Lianyun"+ File.separator + apkParser.gameId ;
		}
		
		File file = new File(targetProperPath);
		
		if (file.exists()) {
			File[] files = file.listFiles();
			for (File temp : files) {
				if (temp.isFile() ) {
					String tempName = temp.getName();
					if (tempName.endsWith(".cfg")) {
						String tempSdkName = tempName.replaceAll(".cfg", "");
						sdkNames.add(tempSdkName);
						LogUtil.showLog("->读取到的渠道有："+tempSdkName);
					}
				}
			}
		}else {
			LogUtil.showLog("没有配置文件，请查看："+targetProperPath);
		}

		
		return sdkNames;
 	}
	/**
	 * 获取GID
	 * @return
	 */
	public  String parseGameID(){
		
		sendLog("获取Apk的gameID");
		
		String gid = "";
		String gidParentPath = Common.GID_TEMP +operator+File.separator+apkPreName+File.separator;
		String gidPath = gidParentPath+File.separator+"mayaGame.ini";
		
		File gidParentFile = new File(gidParentPath);
		if (!gidParentFile.exists()) {
			gidParentFile.mkdirs();
		}
		File gidFile = new File(gidPath);
		if (gidFile.exists()) {
			sendLog("mayaGame.ini已存在，在解压缩前，先删除");
			gidFile.delete();
		}
		
		if (RarUtil.unRar(apkPath, "assets"+File.separator+"mayaGame.ini", gidParentPath)) {
			
			Properties sdkConfig = new Properties();
			FileInputStream fis;
			try {
				
				fis = new FileInputStream(gidPath);
				BufferedReader bf = new BufferedReader(new InputStreamReader(fis));  
				sdkConfig.load(bf);
				
				gid = sdkConfig.getProperty("gid");
				
				sendLog("解析得到gid="+gid);
				
				if (gidParentFile.exists()) {
					sendLog("删除GID临时父目录"+gidParentFile.getAbsolutePath());
					FileUtil.delDir(gidParentFile);
				}
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return gid;
	}
	
	public void sendLog(String msg){
		LogUtil.showLog("ApkPackBean---->"+msg);
	}
}
