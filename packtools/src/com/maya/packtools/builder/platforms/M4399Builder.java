package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;

public class M4399Builder extends BaseBuilder {
    public M4399Builder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        String appKey = oldPro.getProperty("mAppKey");
        newPro.setProperty("mAppKey",  ZipMain.zipOption("0", appKey));
    }


}
