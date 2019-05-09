import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.Properties;


import com.maya.base.apktools.complier.ApkSign;
import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.base.utils.RarUtil;

import com.maya.packtools.model.ApkParser;
import com.maya.packtools.model.CmdParser;
import com.maya.packtools.config.Common;

public class BuildApkByMid {

	private static String outPath ;
	
	private static ApkSign apkSigner;
	// 签名信息
	private static String KEYSTORE_ROOT_PATH = Common.TOOLBOX_KEYSTORE;
	private static String KEYSTORE_NAME = "mayauc.keystore";
	private static String KEYSTORE_PASS = "www.mayauc.com@888";
	private static String KEYSTORE_ALIAS = "maya";
	private static String KEYSTORE_ALIAS_PASS = "android@maya.com";
	
	
	public static void main(String[] args) throws Exception {
		buildMdid(args);
	}

	public static void buildMdid(String[] args) {
		
		CmdParser cmdParser = new CmdParser(args);
		ApkParser apkCfg = new ApkParser(cmdParser);

		int length = args.length;
		
		sendLog("打渠道推广包...");
		
		if (length == 2) {
			
			sendLog("单个参数:" + args[1]);
			buildSingleMdidApk(apkCfg, args[1]);
			
		} else if (length == 3) {
			
			int start = Integer.parseInt(args[1]);
			int end = Integer.parseInt(args[2]);
			
			sendLog("多个参数:" + start + " 到 " + end);
			
			if (start > 0 && end > 0 && end >=start) {
				for (int i = start; i <= end; i++) {
					sendLog("当前正在处理渠道：" + i);
					buildSingleMdidApk(apkCfg, "" + i);
				}
			}

		}else if (length==4) {
			int start = Integer.parseInt(args[1]);
			int end = Integer.parseInt(args[2]);
			outPath=args[3];
			
			sendLog("多个参数:" + start + " 到 " + end);
			
			if (start > 0 && end > 0 && end >=start) {
				for (int i = start; i <= end; i++) {
					sendLog("当前正在处理渠道：" + i);
					buildSingleMdidApk(apkCfg, "" + i);
				}
			}
			
		}

	}

	public static void buildSingleMdidApk(ApkParser apkCfg, String mdid) {

		//签名
		apkSigner = new ApkSign();
		apkSigner.setRarPathAtWindows(Common.WinRarPath);
		apkSigner.setSignParams(KEYSTORE_ROOT_PATH, KEYSTORE_NAME,KEYSTORE_PASS, KEYSTORE_ALIAS, KEYSTORE_ALIAS_PASS);
		
		String gid = "";
		String pid = "";
		String mdidRootPath = Common.MDID_TEMP +apkCfg.apkPreName+File.separator+mdid+File.separator;
		String mdidParentPath = Common.MDID_TEMP +apkCfg.apkPreName+File.separator+mdid+File.separator+"assets";
		String mdidPath = mdidParentPath+File.separator+"mayaGame.ini";
		
		sendLog("临时渠道标示文件：" + mdidPath);
		sendLog("临时渠道标示父目录:"+ mdidParentPath);
		sendLog("临时渠道标示根目录:"+ mdidRootPath);
		
		File mdidRootFile = new File(mdidRootPath);
		File mdidParentFile = new File(mdidParentPath);
		File mdidFile = new File(mdidPath);

		if (!mdidParentFile.exists()) {
			mdidParentFile.mkdirs();
			sendLog("创建临时渠道标示父目录");
		}
		
		if (mdidFile.exists()) {
			//如果存在就先删除
			mdidFile.delete();
		}
		
		sendLog("解压缩:" + "assets" + File.separator + "mayaGame.ini");

		if (RarUtil.unRar(apkCfg.apkPath, "assets" + File.separator + "mayaGame.ini", mdidParentPath)) {
			String gidPath = mdidParentPath + File.separator + "mayaGame.ini";
			Properties sdkConfig = new Properties();
			try {
				FileInputStream fis;
				fis = new FileInputStream(gidPath);
				BufferedReader bf = new BufferedReader(new InputStreamReader(fis));
				sdkConfig.load(bf);
				gid = sdkConfig.getProperty("gid");
				pid = sdkConfig.getProperty("pid");
				String mid = sdkConfig.getProperty("mid");
				sendLog("gid=" + gid);
				sendLog("pid=" + pid);
				sendLog("mid=" + mid);

				sdkConfig.setProperty("mid", mdid);
				sendLog("更改后的mid=" + mdid);

				FileOutputStream sdkfos = new FileOutputStream(mdidPath);
				sdkConfig.store(sdkfos, new Date().toGMTString());
				sdkfos.close();
				fis.close();

				sendLog("复制apk的到临时目录");
				String apkPath = Common.MDID_TEMP + apkCfg.apkPreName + File.separator + mdid + File.separator + gid
						+ "_" + pid + "_" + mdid + ".apk";
				File apkFile = new File(apkPath);
				if (!apkFile.exists()) {
					apkFile.createNewFile();
				}
				FileUtil.copyFile(new File(apkCfg.apkPath), apkFile);
				sendLog("临时apk:" + apkPath);

				sendLog("删除apk中的mayaGame.ini ");
				String deletePath = "  " + "assets" + File.separator + "mayaGame.ini ";
				RarUtil.deleteFile(apkPath, deletePath);

				sendLog("新增apk中的mayaGame.ini ");
				RarUtil.addNewFile2Rar(apkPath, mdidParentPath);

				sendLog("签名");
				String signedApkPath = apkSigner.apkSign(apkPath);

				sendLog("复制");
				moveFile(signedApkPath, apkFile.getName(), apkCfg);

				sendLog("删除文件");
				if (mdidRootFile.exists()) {
					sendLog("删除:" + mdidRootFile.getAbsolutePath());
					FileUtil.delDir(mdidRootFile);
				}

			} catch (Exception e) {
				e.printStackTrace();
				
			}finally{
				sendLog("删除文件");
				if (mdidRootFile.exists()) {
					sendLog("删除:" + mdidRootFile.getAbsolutePath());
					FileUtil.delDir(mdidRootFile);
				}
			}
		}

	}

	public static void moveFile(String signedApkPath, String finalApkName, ApkParser apkCfg) {

		if (signedApkPath != null & !"".equals(signedApkPath)) {

			File signApk = new File(signedApkPath);

			if (signApk.exists()) {
				String apk_output_path="";
				if (outPath!=null && !"".equals(outPath)) {
					apk_output_path = outPath.trim();
				}else {
					apk_output_path = Common.getApkOutputPath() + File.separator + apkCfg.apkPreName;
				}

				File apk_file = new File(apk_output_path);
				if (!apk_file.exists()) {
					apk_file.mkdirs();
					LogUtil.showLog("length:"+apk_file.getAbsolutePath().length()+" path:"+apk_file.getAbsolutePath());
					LogUtil.showLog("打包存放文件夹不存在，正在创建...");
				}
				LogUtil.showLog("打包完成后的存放文件夹:" + apk_file.getAbsolutePath());
				LogUtil.showLog("转移：打包的包");

				String finalApkPath = apk_output_path + File.separator + finalApkName;

				File finalFile = new File(finalApkPath);
				if (!finalFile.exists()) {
					try {
						finalFile.createNewFile();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				RarUtil.copyFile(signedApkPath, finalApkPath);
				LogUtil.showLog("转移：完成");

				signApk.delete();
			}
		}
	}
	

	public static void sendLog(String msg) {
		LogUtil.showLog(msg);
	}
}
