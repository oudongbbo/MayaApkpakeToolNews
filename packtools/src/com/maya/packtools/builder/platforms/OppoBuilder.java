package com.maya.packtools.builder.platforms;

import java.io.File;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;






import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.utils.encrypt.ZipMain;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.config.Common;


public class OppoBuilder extends BaseBuilder{

	public OppoBuilder(ApkParser apkParser) {
		super(apkParser);
		
	}
	
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {

		String mAppId = oldPro.getProperty("appid").trim();
		String mRefer = oldPro.getProperty("appsecret").trim();

		newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
		newPro.setProperty("mRefer", ZipMain.zipOption("0", mRefer));
	}
	
	
	@Override
	protected void handleSdkPlugins(String sdkplugin, Properties prop) {
		
		String neeAppkey = prop.getProperty("appkey").trim();
		
		String vivoContent = FileUtil.read(sdkplugin);

		Pattern p = Pattern.compile("<meta-data android:name=\"app_key\" android:value=\"(.*?)\"/>");
		Matcher m = p.matcher(vivoContent);
		m.find();
		String app_key = m.group(1);
		
		vivoContent = vivoContent.replaceAll(app_key,neeAppkey);


		FileUtil.write(sdkplugin, vivoContent);
		
	}

	@Override
	protected void handleLibsBeforeCopy() {
		
		File oppo_alipay = new File(Common.getApkTempPath(apkParser)
				+ System.getProperty("file.separator") + "smali"
				+ System.getProperty("file.separator") + "com"
				+ System.getProperty("file.separator") + "alipay");
		File oppo_UCMobile = new File(Common.getApkTempPath(apkParser)
				+ System.getProperty("file.separator") + "smali"
				+ System.getProperty("file.separator") + "com"
				+ System.getProperty("file.separator") + "UCMobile");
		File oppo_unionpay = new File(Common.getApkTempPath(apkParser)
				+ System.getProperty("file.separator") + "smali"
				+ System.getProperty("file.separator") + "com"
				+ System.getProperty("file.separator") + "unionpay");
		
		if (oppo_alipay.exists()) {
			FileUtil.delDir(oppo_alipay);
			LogUtil.showLog("OPPO删除支付宝：" + oppo_alipay.toString());
		}
		if (oppo_UCMobile.exists()) {
			FileUtil.delDir(oppo_alipay);
			LogUtil.showLog("OPPO删除银联" + oppo_UCMobile.toString());
		}
		if (oppo_unionpay.exists()) {
			FileUtil.delDir(oppo_alipay);
			LogUtil.showLog("OPPO删除银联" + oppo_unionpay.toString());
		}
		
		
		
	}
	
}
