package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DiQiaoBuilder extends BaseBuilder {
    public DiQiaoBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

        String sdk_content = FileUtil.read(sdkplugin);

        String appid = prop.getProperty("appid");
        String clientid = prop.getProperty("clientid");
        String clientkey = prop.getProperty("clientkey");

        Pattern p = Pattern.compile("<meta-data android:name=\"HS_APPID\" android:value=\"(.*?)\"/>");
        Matcher m = p.matcher(sdk_content);
        m.find();
        String HS_APPID = m.group(1);
        sdk_content = sdk_content.replaceAll(HS_APPID, appid);


         p = Pattern.compile("<meta-data android:name=\"HS_CLIENTID\" android:value=\"(.*?)\"/>");
         m = p.matcher(sdk_content);
        m.find();
        String HS_CLIENTID = m.group(1);
        sdk_content = sdk_content.replaceAll(HS_CLIENTID, clientid);


         p = Pattern.compile("<meta-data android:name=\"HS_CLIENTKEY\" android:value=\"(.*?)\"/>");
         m = p.matcher(sdk_content);
        m.find();
        String HS_CLIENTKEY = m.group(1);
        sdk_content = sdk_content.replaceAll(HS_CLIENTKEY, clientkey);

        FileUtil.write(sdkplugin, sdk_content);

    }


}
