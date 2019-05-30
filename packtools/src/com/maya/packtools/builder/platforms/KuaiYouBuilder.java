package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;

public class KuaiYouBuilder extends BaseBuilder {

	public KuaiYouBuilder(ApkParser apkParser) {
        super(apkParser);

    }
    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

        String mAppId = oldPro.getProperty("mAppId");
        String appKey = oldPro.getProperty("mAppKey");
        newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
        newPro.setProperty("mAppKey", ZipMain.zipOption("0", appKey));

    }
}
