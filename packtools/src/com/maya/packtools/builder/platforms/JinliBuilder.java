package com.maya.packtools.builder.platforms;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.utils.encrypt.ZipMain;
import com.maya.packtools.model.ApkParser;


public class JinliBuilder extends BaseBuilder{

	public JinliBuilder(ApkParser apkParser) {
		super(apkParser);
	}
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {

		String mAppId = oldPro.getProperty("ApiKey").trim();
		
		newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
	}
	
	
	@Override
	protected void handleSdkPlugins(String sdkplugin, Properties prop) {
		
		
		String sdkpluginContent = FileUtil.read(sdkplugin);
		/*包名额外字段替换，例如处理provider*/
		Pattern p2 = Pattern.compile("android:authorities=\"(.*?).fileprovider\"");
		Matcher m2 = p2.matcher(sdkpluginContent);
		if (m2.find()) {
			String old_pname = m2.group(1);
			sdkpluginContent = sdkpluginContent.replaceAll("android:authorities=\""+old_pname+".fileprovider\"", "android:authorities=\""+pname+".fileprovider\""); //替换包名
		}

		FileUtil.write(sdkplugin, sdkpluginContent);
		
	}
}
