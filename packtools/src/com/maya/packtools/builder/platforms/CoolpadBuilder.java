package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class CoolpadBuilder extends BaseBuilder {

	public CoolpadBuilder(ApkParser apkParser) {
		super(apkParser);
		
	}
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {

		String mAppId = oldPro.getProperty("appid").trim();
		String mPayKey = oldPro.getProperty("paykey").trim();

		newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
		newPro.setProperty("mPayKey", ZipMain.zipOption("0", mPayKey));
	}
	
	@Override
	protected void handleSdkPlugins(String sdkplugin, Properties prop) {
		
		String coolpadContent = FileUtil.read(sdkplugin);
		//android:authorities="com.coolpay.example.fileprovider"
		Pattern p = Pattern
				.compile("android:authorities=\"(.*?).fileprovider\"");
		Matcher m = p.matcher(coolpadContent);
		m.find();
		String packName = m.group(1);

		coolpadContent = coolpadContent.replaceAll(packName,pname);

		FileUtil.write(sdkplugin, coolpadContent);
		
	}
	
}
