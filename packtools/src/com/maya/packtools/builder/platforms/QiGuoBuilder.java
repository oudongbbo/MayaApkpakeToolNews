package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;

/***
 *  七果
 */
public class QiGuoBuilder extends BaseBuilder {
    public QiGuoBuilder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        String appid= oldPro.getProperty("AppId");
        newPro.setProperty("mAppId",  ZipMain.zipOption("0", appid));
    }



}
