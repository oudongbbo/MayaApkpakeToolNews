package com.maya.base.apktools.complier;

import java.io.File;
import java.io.IOException;

import com.maya.base.utils.SystemUtil;
import com.maya.base.utils.StreamController;



public class ApkSign {

	private final  String SECRET_KEY_FOR_1_DOT_7 = "  -digestalg  SHA1 -sigalg MD5withRSA";
	private  String KEYSTORE_ROOT_PATH = "";
	private  String KEYSTORE_NAME = "";
	private  String KEYSTORE_PASS = "";
	private  String KEYSTORE_ALIAS = "";
	private  String KEYSTORE_ALIAS_PASS = "";
	
	private String rarPathAtWin = "C:\\WinRAR\\WinRAR.exe";//windows下的rar压缩路径
	
	public ApkSign() {
		
	}
	
	public static void main(String[] args) {
		new ApkSign().apkSign(args[0].trim());
	}

	/**
	 * @param keyRootPath keyStore的根目录
	 * @param keyName     keyStore的名称
	 * @param keyPass     keyStore的密码
	 * @param keyAlias    keyStore的别称
	 * @param aliasPass   别称的密码
	 */
	public void setSignParams(String keyRootPath,String keyName,String keyPass,String keyAlias,String aliasPass){
		KEYSTORE_ROOT_PATH = keyRootPath;
		KEYSTORE_NAME = keyName;
		KEYSTORE_PASS = keyPass;
		KEYSTORE_ALIAS = keyAlias;
		KEYSTORE_ALIAS_PASS = aliasPass;
	}
	
	/**
	 * @param path 在Windows系统下，WinRar压缩软件的绝对路径
	 */
	public void setRarPathAtWindows(String path){
		rarPathAtWin = path;	
	}
	
	/**
	 * @param sourceFilePath
	 */
	public String apkSign(String sourceFilePath) {
		
		System.out.println("-------------------------");
		System.out.println("-------------------------");
		System.out.println("---------Apk签名工具-------");
		System.out.println("-------------------------");
		System.out.println("-------------------------");
		System.out.println("---注意事项-----------------------------------");
		System.out.println("---1.Windows系统请务必安装WinRar软件到指定目录C:\\WinRAR\\WinRAR.exe---");
		System.out.println("---2.zipalign务必配置到系统环境变量中去-----------");
		System.out.println("---3.签名信息请务必输入正确----------------------");
		System.out.println("---------------------------------------------");
		System.out.println("---------------------------------------------");
		
		File srcFile = new File(sourceFilePath);
		
		if (!srcFile.exists()) {
			System.out.println("签名文件不存在，请检查"+sourceFilePath);
			return "";
		}
		String parentPath = srcFile.getParent();
		String fileName = srcFile.getName(); 
		String preName = fileName.substring(0, fileName.lastIndexOf("."));
		String signPath = parentPath + File.separator +preName+"_signed.apk";
		String zipalignPath =   parentPath + File.separator +preName+"_zipalign.apk";
				
		String delcmd;
		//删除原有签名文件
		if (SystemUtil.isWindowsOS()) {
			delcmd = rarPathAtWin + " -ibck -inul d " + sourceFilePath + "  "+ "META-INF";
		}else {
			delcmd =" zip  -d "+sourceFilePath+" META-INF/* ";
		}

		try {
			Process process = Runtime.getRuntime().exec(delcmd);

			StreamController.printStream(process);
			
			if (process.waitFor() != 0) {
				if (process.exitValue() == 0) System.out.println("exit");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}


		StringBuffer buffer = new StringBuffer();
		buffer.setLength(0);


		buffer.append(" jarsigner  -keystore ")
		.append(KEYSTORE_ROOT_PATH+File.separator)
		.append(KEYSTORE_NAME)
		.append(" -storepass "+KEYSTORE_PASS)
		.append(" -keypass "+KEYSTORE_ALIAS_PASS)
		.append(" -signedjar ")
		.append(signPath)
		.append(" ") 
		.append(sourceFilePath+" ") 
		.append(KEYSTORE_ALIAS)
		.append(SECRET_KEY_FOR_1_DOT_7); 


		try {
			Process process = Runtime.getRuntime().exec(buffer.toString());
			
			StreamController.printStream(process);
			
			if (process.waitFor() != 0)
				System.out.println("签名失败");
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		System.out.println("--------------------------------");
		System.out.println("----"+fileName + "签名完成----");
		System.out.println("--------------------------------");
		
		// APK优化
		System.out.println("优化的文件名："+zipalignPath);

		buffer.setLength(0);
		
		
		buffer.append("zipalign  4  " + signPath + " " + zipalignPath);
		
		try {
			Process process = Runtime.getRuntime().exec(buffer.toString());

			StreamController.printStream(process);
			
			if (process.waitFor() != 0) {
				System.out.println("优化失败");
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		System.out.println("--------------------------------");
		System.out.println("----"+fileName + "优化完成----");
		System.out.println("--------------------------------");

		buffer.setLength(0);
		

		File signApk = new File(signPath);
		if (signApk.exists()) {
			//删除签名apk
			signApk.delete();
		}
		return zipalignPath;
	}

}
