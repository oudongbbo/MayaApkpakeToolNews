package com.maya.packtools.builder.platforms;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.utils.encrypt.ZipMain;
import com.maya.packtools.model.ApkParser;


public class MiBuilder extends BaseBuilder{

	public MiBuilder(ApkParser apkParser) {
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
	protected String handleApplication(String manifest) {
		return replaceApplication("com.maya.sdk.m.platform.MISDKApplication", manifest);
	}


	@Override
	protected void handleSdkPlugins(String sdkplugin, Properties prop) {
		String MiContent = FileUtil.read(sdkplugin);
		Pattern p = Pattern.compile("android:name=\"(.*?).MI_GAME_PUSH\"");
		Matcher m = p.matcher(MiContent);
		m.find();
		String packageName= m.group(1);
		MiContent = MiContent.replaceAll(packageName,pname);
		FileUtil.write(sdkplugin, MiContent);
	}





}
