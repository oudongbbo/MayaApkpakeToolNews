package com.maya.packtools.builder.platforms;

import java.util.Properties;


import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.utils.encrypt.ZipMain;
import com.maya.packtools.model.ApkParser;


public class MeizuBuilder extends BaseBuilder {

	public MeizuBuilder(ApkParser apkParser) {
		super(apkParser);
		
	}
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {

		String mAppId = oldPro.getProperty("appid").trim();
		String mAppKey = oldPro.getProperty("appkey").trim();

		newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
		newPro.setProperty("mAppKey", ZipMain.zipOption("0", mAppKey));
	}
	
	@Override
	protected void handleSdkPlugins(String sdkplugin, Properties prop) {
		
//		String meizu_content = FileUtil.read(sdkplugin);
//		Pattern p = Pattern.compile("<data android:host=\"alipay\" android:scheme=\"(.*?)\"");
//		Matcher m = p.matcher(meizu_content);
//		m.find();
//		String alipay_name = m.group(1);
//		meizu_content = meizu_content.replaceAll(alipay_name,pname);
//
//		FileUtil.write(sdkplugin, meizu_content);
		
	}
	
}
