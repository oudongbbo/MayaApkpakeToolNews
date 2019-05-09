package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;

public class YeShenBuilder extends BaseBuilder {
    public YeShenBuilder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        String appid= oldPro.getProperty("AppId");
        String appkey=oldPro.getProperty("AppKey");
        newPro.setProperty("mAppId",appid);
        newPro.setProperty("mAppKey",appkey);
    }



}
