package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;

public class LanDieBuilder extends BaseBuilder {
    public LanDieBuilder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        String mAppId = oldPro.getProperty("mAppId");
        String extra1 = oldPro.getProperty("partner");
        newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
        newPro.setProperty("extra1", extra1);
    }



}
