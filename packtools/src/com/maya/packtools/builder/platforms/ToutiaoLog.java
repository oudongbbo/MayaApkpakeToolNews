package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;

public class ToutiaoLog extends BaseBuilder {
    public ToutiaoLog(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        String appName=oldPro.getProperty("AppName");
        String appid=oldPro.getProperty("Appid");
        newPro.setProperty("extra1",appName);
        newPro.setProperty("extra2",appid);
    }


    @Override
    protected String handleApplication(String manifest) {
        return replaceApplication("com.maya.sdk.m.platform.ToutiaoLogApp", manifest);
    }


}
