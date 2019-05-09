package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class WuFanBuilder extends BaseBuilder {
    public WuFanBuilder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        String appKey=prop.getProperty("app_key");
        String private_key=prop.getProperty("private_key");

        String wuFanContent=FileUtil.read(sdkplugin);

        Pattern p = Pattern.compile("<meta-data android:name=\"PA_APP_KEY\" android:value=\"(.*?)\" />");
        Matcher m = p.matcher(wuFanContent);
        m.find();
        String appkey = m.group(1);
        wuFanContent = wuFanContent.replaceAll(appkey, appKey);


         p = Pattern.compile("<meta-data android:name=\"PA_APP_PRIVATE_KEY\" android:value=\"(.*?)\" />");
         m = p.matcher(wuFanContent);
        m.find();
        String privaterKey = m.group(1);
        wuFanContent = wuFanContent.replaceAll(privaterKey, private_key);


        FileUtil.write(sdkplugin, wuFanContent);

    }
}
