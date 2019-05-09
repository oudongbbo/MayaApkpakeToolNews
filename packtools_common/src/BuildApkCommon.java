import apktools.ApkTools;

/**
 * 用来处理一些基本功能，如换icon、换包名、应用名、版本号，版本名等
 * @author smalli
 *
 */
public class BuildApkCommon {

	
	public static void main(String[] args) throws Exception {
		//参数准备
		ApkTools.prepare();
		//运行打包
		ApkTools.runApktools(args);
	}

	
}