package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class JiuWanBuilder extends BaseBuilder {
    public JiuWanBuilder(ApkParser apkParser) {
        super(apkParser); }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        super.handleSdkPlugins(sdkplugin, prop);
        String  appkey=prop.getProperty("HS_APPID");
        String  clientid=prop.getProperty("HS_CLIENTID");
        String clientkey=prop.getProperty("HS_CLIENTKEY");

        String ZYXContent = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("meta-data android:name=\"HS_APPID\" android:value=\"(.*?)\"");
        Matcher m = p.matcher(ZYXContent);
        m.find();
        String HS_APPID = m.group(1);
        ZYXContent = ZYXContent.replaceAll(HS_APPID, appkey);
        FileUtil.write(sdkplugin, ZYXContent);


        p = Pattern.compile("meta-data android:name=\"HS_CLIENTID\" android:value=\"(.*?)\"");
        m = p.matcher(ZYXContent);
        m.find();
        String HS_CLIENTID = m.group(1);
        ZYXContent = ZYXContent.replaceAll(HS_CLIENTID, clientid);
        FileUtil.write(sdkplugin, ZYXContent);


        p = Pattern.compile("meta-data android:name=\"HS_CLIENTKEY\" android:value=\"(.*?)\"");
        m = p.matcher(ZYXContent);
        m.find();
        String HS_CLIENTKEY = m.group(1);
        ZYXContent = ZYXContent.replaceAll(HS_CLIENTKEY, clientkey);
        FileUtil.write(sdkplugin, ZYXContent);

    }
}



