package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;


import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class IqiyiBuilder extends BaseBuilder {
    public IqiyiBuilder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        String gameId = oldPro.getProperty("gameId");
        newPro.setProperty("gameId", gameId);
    }

    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        String iqiyiContent = FileUtil.read(sdkplugin);

        Pattern p = Pattern.compile("android:name=\"(.*?).intent.ACTION_REMOTE_SERVICE\"");
        Matcher m = p.matcher(iqiyiContent);
        m.find();
        String pname1 = m.group(1);
        iqiyiContent = iqiyiContent.replaceAll(pname1, pname);

        p = Pattern.compile("android:authorities=\"(.*?).Provider\"");
        m = p.matcher(iqiyiContent);
        m.find();
        String pname2 = m.group(1);
        iqiyiContent = iqiyiContent.replaceAll(pname2, pname);
        FileUtil.write(sdkplugin, iqiyiContent);
    }


    @Override
    protected String handleApplication(String manifest) {
        return  replaceApplication("com.feimiao.sdk.m.platform.IqiyiApplication",manifest);
    }
}
