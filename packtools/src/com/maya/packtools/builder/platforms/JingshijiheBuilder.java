package com.maya.packtools.builder.platforms;

import java.util.Properties;


import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

public class JingshijiheBuilder extends BaseBuilder {

	public JingshijiheBuilder(ApkParser apkParser) {
		super(apkParser);
	}
	
	@Override
	protected String handleApplication(String manifest) {
		return replaceApplication("com.android.gemstone.sdk.online.proxy.GemOnlineApplication", manifest);
	}
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {

		String extra1 = oldPro.getProperty("TD_AppID").trim();
		String extra2 = oldPro.getProperty("AD_AppID").trim();
		String gameName = oldPro.getProperty("gameName").trim();
		String gameMainActivity = oldPro.getProperty("gameMainActivity").trim();

		newPro.setProperty("extra1", extra1);
		newPro.setProperty("extra2", extra2);
		newPro.setProperty("gameName", gameName);
		newPro.setProperty("gameMainActivity", gameMainActivity);
		
	}
	
	
	@Override
	protected void handleAndroidManifestBySDK() {
		
		String manifestContent = FileUtil.read(ManifestPath);

		manifestContent = manifestContent.replaceFirst("android.intent.action.MAIN", "action.jingshijihe");
		manifestContent = manifestContent.replaceFirst("android.intent.category.LAUNCHER","android.intent.category.DEFAULT");
		
		FileUtil.write(ManifestPath, manifestContent);
	}
	
}
