package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class MingTongBuilder extends BaseBuilder {

    private String str2;
    private String str3;

    public MingTongBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

        String channelId = oldPro.getProperty("channelId");
        String channelName = oldPro.getProperty("channelName");
        String gameId = oldPro.getProperty("gameId");
        String gameName = oldPro.getProperty("gameName");
        String appId = oldPro.getProperty("appId");
        String appKey = oldPro.getProperty("appKey");
        String serverUrl = oldPro.getProperty("serverUrl");

        try {
            //这一句是重点
            str2 = new String(channelName.getBytes("ISO-8859-1"), "utf-8");
            //这一句是重点
            str3 = new String(gameName.getBytes("ISO-8859-1"), "utf-8");

        } catch (UnsupportedEncodingException e1) {
            e1.printStackTrace();
        };


        newPro.setProperty("mAppId", ZipMain.zipOption("0", appId));
        newPro.setProperty("mAppKey", ZipMain.zipOption("0", appKey));
        newPro.setProperty("gameId", gameId);

        newPro.setProperty("extra1", channelId);
        newPro.setProperty("extra2", str2);
        newPro.setProperty("extra3", str3);
        newPro.setProperty("extra4", serverUrl);

    }


  /*  	@Override
	protected void handleTempRFiles() {

		String finalPnamePath = "com.yikeyou";

		copyFileAndReplacePackageName(SDK, finalPnamePath, pname);
	}
*/


}
