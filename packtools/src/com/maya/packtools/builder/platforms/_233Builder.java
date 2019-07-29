package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;

public class _233Builder extends BaseBuilder {
    public _233Builder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

        String appKey = oldPro.getProperty("appKey");
        String channelId = oldPro.getProperty("channelId");
        newPro.setProperty("mAppKey", ZipMain.zipOption("0", appKey));
        newPro.setProperty("gameId", channelId);

    }

}
