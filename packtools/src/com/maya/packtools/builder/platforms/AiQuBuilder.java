package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AiQuBuilder extends BaseBuilder {
    public AiQuBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

        String sdk_content = FileUtil.read(sdkplugin);


        String gameid = prop.getProperty("WANCMS_GAMEID");
        String appid = prop.getProperty("WANCMS_APPID");
        String agent = prop.getProperty("WANCMS_AGENT");

        Pattern p = Pattern.compile("<meta-data android:name=\"WANCMS_APPID\" android:value=\"(.*?)\"/>");
        Matcher m = p.matcher(sdk_content);
        m.find();
        String WANCMS_APPID = m.group(1);
        sdk_content = sdk_content.replaceAll(WANCMS_APPID,appid );


        p = Pattern.compile("<meta-data android:name=\"WANCMS_GAMEID\" android:value=\"(.*?)\"/>");
        m = p.matcher(sdk_content);
        m.find();
        String WANCMS_GAMEID = m.group(1);
        sdk_content = sdk_content.replaceAll(WANCMS_GAMEID, gameid);


        p = Pattern.compile("<meta-data android:name=\"WANCMS_AGENT\" android:value=\"(.*?)\"/>");
        m = p.matcher(sdk_content);
        m.find();
        String WANCMS_AGENT = m.group(1);
        sdk_content = sdk_content.replaceAll(WANCMS_AGENT, agent);

        FileUtil.write(sdkplugin, sdk_content);

    }



}
