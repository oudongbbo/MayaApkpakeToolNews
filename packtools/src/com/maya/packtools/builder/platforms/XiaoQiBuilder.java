package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/***
 *  小七
 */
public class XiaoQiBuilder extends BaseBuilder{

	public XiaoQiBuilder(ApkParser apkParser) {
		super(apkParser);
	}
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {

		String appKey = oldPro.getProperty("AppKey").trim();
		newPro.setProperty("mAppKey", ZipMain.zipOption("0", appKey));

	}
	
	
	@Override
	protected void handleSdkPlugins(String sdkplugin, Properties prop) {

		String sdkpluginContent = FileUtil.read(sdkplugin);
		/*包名额外字段替换，例如处理provider*/
		Pattern p2 = Pattern.compile("android:authorities=\"(.*?).provider\"");
		Matcher m2 = p2.matcher(sdkpluginContent);
		if (m2.find()) {
			String old_pname = m2.group(1);
			sdkpluginContent = sdkpluginContent.replaceAll(old_pname,pname); //替换包名
		}

		FileUtil.write(sdkplugin, sdkpluginContent);
		
	}

}
