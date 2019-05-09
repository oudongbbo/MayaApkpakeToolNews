package com.maya.packtools.builder.platforms;

import java.util.Properties;


import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

public class TianyuBuilder extends BaseBuilder {

	public TianyuBuilder(ApkParser apkParser) {
		super(apkParser);
	}
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {

		String mAppId = oldPro.getProperty("app_id").trim();
		String mPayId = oldPro.getProperty("client_id").trim();
		String mPayKey = oldPro.getProperty("client_key").trim();

		newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
		newPro.setProperty("mPayId", ZipMain.zipOption("0", mPayId));
		newPro.setProperty("mPayKey", ZipMain.zipOption("0", mPayKey));
	}
	
}
