package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


/***
 * 果盘SDK
 */

public class GuopanBuilder extends BaseBuilder {
    public GuopanBuilder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        String appid = oldPro.getProperty("AppId");
        String appkey = oldPro.getProperty("AppKey");
        newPro.setProperty("mAppId", ZipMain.zipOption("0", appid));
        newPro.setProperty("mAppKey", ZipMain.zipOption("0", appkey));
    }

    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        String guopanContent = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("android:authorities=\"(.*?).StubContentProvider\"");
        Matcher m = p.matcher(guopanContent);
        m.find();
        String packName = m.group(1);
        guopanContent = guopanContent.replaceAll(packName, pname);


        FileUtil.write(sdkplugin, guopanContent);
    }
}
