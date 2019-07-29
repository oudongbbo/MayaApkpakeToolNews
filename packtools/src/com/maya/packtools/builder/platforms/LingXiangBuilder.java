package com.maya.packtools.builder.platforms;


import com.maya.base.utils.LogUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;
import java.util.Properties;


/***
 *  灵响
 */
public class LingXiangBuilder extends BaseBuilder {
    public LingXiangBuilder(ApkParser apkParser) {
        super(apkParser);
    }



    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        String appid = oldPro.getProperty("appid");
        String secret = oldPro.getProperty("secret");
        newPro.setProperty("mAppId",  ZipMain.zipOption("0", appid));
        newPro.setProperty("mAppKey",  ZipMain.zipOption("0", secret));
    }


    @Override
    protected void handleTempRFiles() {

        String finalPnamePath = "com.hw.maya.yhcq.test";
        LogUtil.showLog("从此包名下复制文件-->" + finalPnamePath);

        copyFileAndReplacePackageName(SDK, finalPnamePath, pname);
    }


}
