package com.maya.packtools.builder.platforms;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;



import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.utils.encrypt.ZipMain;
import com.maya.packtools.model.ApkParser;


public class VivoBuilder extends BaseBuilder{
	
	public VivoBuilder(ApkParser apkParser) {
		super(apkParser);
	}

	@Override
	protected String handleApplication(String manifest) {
		return replaceApplication("com.maya.sdk.m.platform.VivoApplication", manifest);
	}

	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {
		String mAppId = oldPro.getProperty("appid").trim();
		newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
	}
	
	
	/*@Override
	protected void handleTempRFiles() {
		String finalPnamePath = "com.feimiao.xa.sfly.vivo";
		copyFileAndReplacePackageName(SDK, finalPnamePath, pname);
	}*/

	
	/*@Override
	protected void handleSdkPlugins(String sdkplugin, Properties prop) {
		
		
		String vivoContent = FileUtil.read(sdkplugin);
		//替换wallet
		Pattern p = Pattern.compile("<data android:scheme=\"qwallet(.*?)\"");
		Matcher m = p.matcher(vivoContent);
		m.find();
		String qwallet = m.group(1);
		vivoContent = vivoContent.replaceAll("qwallet"+qwallet,"qwallet"+pname);
		
		FileUtil.write(sdkplugin, vivoContent);
		
	}*/
	
}
