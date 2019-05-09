package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MiliYouBuilder extends BaseBuilder {
    public MiliYouBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        super.handleSdkPlugins(sdkplugin, prop);


        String WANCMS_APPID = prop.getProperty("appid");
        String WANCMS_GAMEID = prop.getProperty("gameid");
        String WANCMS_AGENT = prop.getProperty("agent");

        String MiLiContent = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("<meta-data android:name=\"WANCMS_APPID\" android:value=\"(.*?)\"");
        Matcher m = p.matcher(MiLiContent);
        m.find();
        String appid = m.group(1);
        MiLiContent = MiLiContent.replaceAll(appid, WANCMS_APPID);


        p = Pattern.compile("<meta-data android:name=\"WANCMS_GAMEID\" android:value=\"(.*?)\"");
        m = p.matcher(MiLiContent);
        m.find();
        String gameid = m.group(1);
        MiLiContent = MiLiContent.replaceAll(gameid, WANCMS_GAMEID);

        p = Pattern.compile("<meta-data android:name=\"WANCMS_AGENT\" android:value=\"(.*?)\"");
        m = p.matcher(MiLiContent);
        m.find();
        String agent = m.group(1);
        MiLiContent = MiLiContent.replaceAll(agent, WANCMS_AGENT);


        FileUtil.write(sdkplugin, MiLiContent);


    }
}
