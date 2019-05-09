package com.maya.packtools.builder.platforms;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.Properties;


import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.config.Common;
import com.maya.packtools.model.ApkParser;

public class JingshiBuilder extends BaseBuilder {

	public JingshiBuilder(ApkParser apkParser) {
		super(apkParser);
	}
	
	@Override
	protected void handleSdkPlugins(String sdkplugin, Properties prop) {
		
		try {
			//先处理channel.properties
			String channel_properties = Common.getApkTempPath(apkParser)+ File.separator + "assets" + File.separator+ "channel.properties";
			Properties pro1 = new Properties();
			FileInputStream fis1 = new FileInputStream(channel_properties);
			FileOutputStream fos1 = new FileOutputStream(channel_properties);
			pro1.load(fis1);
			pro1.setProperty("CHANNEL_ID", prop.getProperty("CHANNEL_ID"));
			pro1.setProperty("JS_DT_GAME_ID",prop.getProperty("JS_DT_GAME_ID"));
			pro1.store(fos1, new Date().toGMTString());
			fos1.close();

			//处理xlw_config.properties
			String xlw_config_properties = Common.getApkTempPath(apkParser)+ File.separator + "assets" + File.separator+ "xlw_config.properties";
			Properties pro2 = new Properties();
			FileInputStream fis2 = new FileInputStream(xlw_config_properties);
			FileOutputStream fos2 = new FileOutputStream(xlw_config_properties);
			pro2.load(fis2);
			pro2.setProperty("gamegs_key", prop.getProperty("gamegs_key"));
			pro2.setProperty("platform",prop.getProperty("platform"));
			pro2.setProperty("channelId",prop.getProperty("channelId"));
			pro2.setProperty("short_name",prop.getProperty("short_name"));
			pro2.setProperty("sitename",prop.getProperty("sitename"));
			pro2.store(fos2, new Date().toGMTString());
			fos2.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {

		String extra1 = oldPro.getProperty("TD_AppID").trim();
		String extra2 = oldPro.getProperty("AD_AppID").trim();
		String extra3 = oldPro.getProperty("channelId").trim();

		newPro.setProperty("extra1", extra1);
		newPro.setProperty("extra2", extra2);
		newPro.setProperty("extra3", extra3);
		
	}
	
	
}
