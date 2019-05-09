package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;

public class YunWaBuilder extends BaseBuilder {
    public YunWaBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

        String appId = oldPro.getProperty("AppId");
        newPro.setProperty("mAppId",ZipMain.zipOption("0", appId));
    }


}
