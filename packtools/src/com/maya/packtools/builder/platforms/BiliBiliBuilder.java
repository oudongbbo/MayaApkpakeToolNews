package com.maya.packtools.builder.platforms;

import java.util.Properties;

import com.maya.packtools.builder.base.BaseBuilder;

import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

public class BiliBiliBuilder extends BaseBuilder{

	public BiliBiliBuilder(ApkParser apkParser) {
        super(apkParser);

    }
    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

        String mAppId = oldPro.getProperty("mAppId");
        String appKey = oldPro.getProperty("mAppKey");
        String extra1 = oldPro.getProperty("merchant_id");
        String extra2 = oldPro.getProperty("serever_id");

        newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
        newPro.setProperty("mAppKey", ZipMain.zipOption("0", appKey));
        newPro.setProperty("extra1", extra1);
        newPro.setProperty("extra2", extra2);

    }
}
