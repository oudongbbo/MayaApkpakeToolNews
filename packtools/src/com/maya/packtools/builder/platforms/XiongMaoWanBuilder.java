package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class XiongMaoWanBuilder extends BaseBuilder {
    public XiongMaoWanBuilder(ApkParser apkParser) {
        super(apkParser);

    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        super.handleSdkPlugins(sdkplugin, prop);



        String XMWAPPID = prop.getProperty("XMWAPPID");
        String XMWAPPKEY = prop.getProperty("XMWAPPKEY");
        String ADTAPPID = prop.getProperty("ADTAPPID");



        String sdkContent = FileUtil.read(sdkplugin);

        Pattern p = Pattern.compile("<meta-data android:name=\"XMWAPPID\" android:value=\"(.*?)\"/>");
        Matcher m = p.matcher(sdkContent);
        m.find();
        String APPID = m.group(1);
        sdkContent = sdkContent.replaceAll(APPID, XMWAPPID);
        FileUtil.write(sdkplugin, sdkContent);



        p = Pattern.compile("<meta-data android:name=\"XMWAPPKEY\" android:value=\"(.*?)\"/>");
        m = p.matcher(sdkContent);
        m.find();
        String appkey = m.group(1);
        sdkContent = sdkContent.replaceAll(appkey ,XMWAPPKEY);
        FileUtil.write(sdkplugin, sdkContent);

        p = Pattern.compile("<meta-data android:name=\"ADTAPPID\" android:value=\"(.*?)\"/>");
        m = p.matcher(sdkContent);
        m.find();
        String adtappid = m.group(1);
        sdkContent = sdkContent.replaceAll(adtappid ,ADTAPPID);
        FileUtil.write(sdkplugin, sdkContent);



    }


}
