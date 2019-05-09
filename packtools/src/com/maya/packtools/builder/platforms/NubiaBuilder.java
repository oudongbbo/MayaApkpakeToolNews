package com.maya.packtools.builder.platforms;

import java.util.Properties;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.utils.encrypt.ZipMain;
import com.maya.packtools.model.ApkParser;


public class NubiaBuilder extends BaseBuilder{

	public NubiaBuilder(ApkParser apkParser) {
		super(apkParser);
		
	}
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {

		String mAppId = oldPro.getProperty("appid").trim();
		String mAppKey = oldPro.getProperty("appkey").trim();

		newPro.setProperty("mAppId",ZipMain.zipOption("0", mAppId) );
		newPro.setProperty("mAppKey", ZipMain.zipOption("0", mAppKey));
	}


	
}
