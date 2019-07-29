package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;

public class YiKeYouBuilder extends BaseBuilder {
    public YiKeYouBuilder(ApkParser apkParser) {
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


        newPro.setProperty("mAppId", ZipMain.zipOption("0", appId));
        newPro.setProperty("mAppKey", ZipMain.zipOption("0", appKey));
        newPro.setProperty("gameId", gameId);

        newPro.setProperty("extra1", channelId);
        newPro.setProperty("extra2", channelName);
        newPro.setProperty("extra3", gameName);
        newPro.setProperty("extra4", serverUrl);

    }


    	@Override
	protected void handleTempRFiles() {

		String finalPnamePath = "com.yb.maya.sjjx.eqgame";

		copyFileAndReplacePackageName(SDK, finalPnamePath, pname);
	}


}
