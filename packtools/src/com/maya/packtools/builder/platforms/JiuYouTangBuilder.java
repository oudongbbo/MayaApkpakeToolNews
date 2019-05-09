package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class JiuYouTangBuilder extends BaseBuilder {
    public JiuYouTangBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        super.handleSdkPlugins(sdkplugin, prop);


        String WANCMS_APPID = prop.getProperty("appid");
        String WANCMS_GAMEID = prop.getProperty("gameid");
        String WANCMS_AGENT = prop.getProperty("agent");

        String MiLiContent = FileUtil.read(sdkplugin);
        /*Pattern p = Pattern.compile("<meta-data android:name=\"WANCMS_APPID\" android:value=\"1639\"");
        Matcher m = p.matcher(MiLiContent);
        m.find();
        String appid = m.group(1);*/
        MiLiContent = MiLiContent.replaceAll("1639", WANCMS_APPID);


     /*   p = Pattern.compile("<meta-data android:name=\"WANCMS_GAMEID\" android:value=\"1633\"");
        m = p.matcher(MiLiContent);
        m.find();
        String gameid = m.group(1);*/
        MiLiContent = MiLiContent.replaceAll("1633", WANCMS_GAMEID);

        /*p = Pattern.compile("<meta-data android:name=\"WANCMS_AGENT\" android:value=\"cps001\"");
        m = p.matcher(MiLiContent);
        m.find();
        String agent = m.group(1);*/
        MiLiContent = MiLiContent.replaceAll("cps001", WANCMS_AGENT);


        FileUtil.write(sdkplugin, MiLiContent);


    }

}
