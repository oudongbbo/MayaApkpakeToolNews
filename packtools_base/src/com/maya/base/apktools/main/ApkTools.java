package com.maya.base.apktools.main;

import java.io.File;
import java.util.HashMap;

import com.maya.base.apktools.complier.ApkBuild;
import com.maya.base.apktools.complier.ApkDecode;
import com.maya.base.apktools.complier.ApkSign;
import com.maya.base.apktools.tool.ReApkIcon;
import com.maya.base.apktools.tool.ReAppName;
import com.maya.base.apktools.tool.ReAppVerName;
import com.maya.base.apktools.tool.RePackName;
import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.base.apktools.tool.ReAppVerCode;


/**
 * 在线打包基本功能
 * 
 * 输入参数：1.apk文件路径 2.判断更改类型（-i:换icon -vc:换版本号 -vn：换版本名 -an：换游戏名 -pn：换包名） 3.字符串
 * 
 * @author Ben
 * 
 */
public class ApkTools {

	// 各种路径
	private static String ROOT = System.getProperty("user.dir")+ File.separator;
	private static String TOOLBOX = ROOT + "toolbox" + File.separator;
	private static String ApkToolPath = TOOLBOX + "toolkit" + File.separator+ "apktool.jar";

	private static String WinRarPath = "C:\\WinRAR\\WinRAR.exe";

	// 签名信息
	private static String KEYSTORE_ROOT_PATH = TOOLBOX + "keystore" + File.separator;
	private static String KEYSTORE_NAME = "mayauc.keystore";
	private static String KEYSTORE_PASS = "www.mayauc.com@888";
	private static String KEYSTORE_ALIAS = "maya";
	private static String KEYSTORE_ALIAS_PASS = "android@maya.com";
	// 各种变量
	private static String apkSourcPath;// apk母包路径
	private static String apkDecodePath; // apk反编译文件存放目录
	private static String apkSavePath;// apk最终存储(目录)
	private static String signedApkPath;
	
	// 各种工具
	private static ApkDecode apkDecoder;
	private static ApkBuild apkBuilder;
	private static ApkSign apkSigner;

	public static void main(String[] args) {

		// 准备好工具
		prepare();
		// 开始处理
		runApktools(args);

	}

	public static void prepare() {
		apkBuilder = new ApkBuild(ApkToolPath);
		apkDecoder = new ApkDecode(ApkToolPath);
		apkSigner = new ApkSign();
		apkSigner.setRarPathAtWindows(WinRarPath);
		apkSigner.setSignParams(KEYSTORE_ROOT_PATH, KEYSTORE_NAME,
				KEYSTORE_PASS, KEYSTORE_ALIAS, KEYSTORE_ALIAS_PASS);
	}

	public static void runApktools(String[] args) {

		LogUtil.showLog("开始运行打包工具", LogUtil.LogLevel.LEVEL_1);

		apkSourcPath = args[0].trim();
		apkSavePath = args[args.length - 1].trim();
		apkDecodePath = apkSourcPath.substring(0, apkSourcPath.lastIndexOf("."));
		
		LogUtil.showLog("目标来源：" + apkSourcPath);
		LogUtil.showLog("目标路径：" + apkSavePath);

		File sourceApkPathFile = new File(apkSourcPath);
		File savePathFile = new File(apkSavePath + File.separator + "signed_"+ sourceApkPathFile.getName());

		HashMap<String, String> map = ApkToolSupport.judgeInput(args);

		if (ApkToolSupport.isChangeICON && map.size() == 1) {
			// 只需要处理icon相关
			LogUtil.showLog("只处理icon");

			ReApkIcon.changeNewIcon(apkSourcPath,map.get(ApkToolSupport.TYPE_ICON));

			String signApkPath = apkSigner.apkSign(apkSourcPath);// 对apk进行签名并生成签名apk存储在sourceApkPath目录下

			File signFile = new File(signApkPath);
			// 将apk目录转移到指定目录下，并删除signApkPath
			FileUtil.copyFile(signFile, savePathFile);

			FileUtil.delDir(signFile);

		} else if (ApkToolSupport.isChangegGameId && map.size() == 1) {

		} else {
			// 处理icon还需要处理其他功能
			if (ApkToolSupport.isChangeICON) {
				// 执行修改icon
				System.out.println("修改icon");
				String newIconPath = map.get(ApkToolSupport.TYPE_ICON);
				ReApkIcon.changeNewIcon(apkSourcPath,newIconPath);
			}
			//进行反编译
			decode();
			
			String replaceContent;
			// 修改游戏名
			if (ApkToolSupport.isChangeAPPName) {
				System.out.println("修改游戏名");
				replaceContent = map.get(ApkToolSupport.TYPE_APPNAME);
				new ReAppName().work(apkDecodePath, replaceContent);
			}

			// 修改包名
			if (ApkToolSupport.isChangePackageName) {
				System.out.println("修改包名");
				replaceContent = map.get(ApkToolSupport.TYPE_PACKAGENAME);
				
				new RePackName().work(apkDecodePath, replaceContent);
			}

			// 修改版本名
			if (ApkToolSupport.isChangeVersionName) {
				System.out.println("修改版本名");
				replaceContent = map.get(ApkToolSupport.TYPE_VERSIONNAME);
				
				new ReAppVerName().work(apkDecodePath, replaceContent);
				
			}

			// 修改版本号
			if (ApkToolSupport.isChangeVersionCode) {
				System.out.println("修改版本号");
				replaceContent = map.get(ApkToolSupport.TYPE_VERSIONCODE);
				
				new ReAppVerCode().work(apkDecodePath, replaceContent);
			}

			//回编译
			build();

			sign();
			
			move(savePathFile);
			// 删除多余文件
			delete();
		}
		
		System.out.println("基本功能执行完毕");
	}

	/**
	 * 对apk进行反编译
	 */
	private static void decode() {
		System.out.println("-->反编译文件<--");
		apkDecoder.decode(apkSourcPath, apkDecodePath);
	}
	
	private static void build() {
		System.out.println("-->回编译编译开始<--");
		apkBuilder.build(apkDecodePath);
	}

	private static void delete() {
		System.out.println("-->删除反编译文件<--");
		FileUtil.delDir(new File(apkDecodePath));
	}


	private static void sign() {
		System.out.println("-->签名<--");
		
		String distPath = apkDecodePath + File.separator + "dist" + File.separator;
		String sourceName = new File(apkSourcPath).getName();
		File distFile = new File(distPath + sourceName);
		
		signedApkPath = apkSigner.apkSign(distFile.getAbsolutePath());
	}

	private static void move(File saveFile) {
		System.out.println("-->移动签名文件<--");
		File signApkPathFile = new File(signedApkPath);
		// 将apk目录转移到指定目录下，并删除signApkPath
		FileUtil.copyFile(signApkPathFile, saveFile);
		//删除签名文件
		FileUtil.delDir(signApkPathFile);
	}
	
	/**
	 * 判断控制台输入参数是否合法
	 */
//	private static boolean isParamEffective(String sourceApkPath2,String type2, String replaceTarget2) {
//
//		if (sourceApkPath2 == null || "".equals(sourceApkPath2)) {
//			System.out.println("apk路径为空");
//			return false;
//		} else if (!sourceApkPath2.endsWith(".apk")) {
//			System.out.println("不是一个apk文件");
//			return false;
//		}
//
//		if (!(type2.equals("-i") || type2.equals("-vc") || type2.equals("-vn")
//				|| type2.equals("-an") || type2.equals("-pn"))) {
//			System.out.println("修改类型无法识别");
//			return true;
//		}
//
//		if (replaceTarget2 == null || "".equals(replaceTarget2)) {
//			System.out.println("目标参数为空");
//			return false;
//		}
//
//		File apkFile = new File(sourceApkPath2);
//		if (!apkFile.exists()) {
//			System.out.println("apk文件不存在");
//			return false;
//		}
//
//		if (replaceTarget2.contains(".png")) {
//			File iconFileSoure = new File(replaceTarget2); // icon源目录
//
//			if (!iconFileSoure.exists()) {
//				System.out.println("icon文件不存在");
//				return false;
//			}
//		}
//
//		return true;
//	}

}
