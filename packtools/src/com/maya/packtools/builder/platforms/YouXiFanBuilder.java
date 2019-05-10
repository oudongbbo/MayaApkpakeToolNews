package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class YouXiFanBuilder extends BaseBuilder {
    public YouXiFanBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        super.handleSdkPlugins(sdkplugin, prop);

      /*  <meta-data android:name="screenOrientation" android:value="screenOrientation:0"/>
        <meta-data android:name="YG_APPID" android:value="YG_APPID:190110295422"/>
        <meta-data android:name="YG_SPLASH" android:value="YG_SPLASH:0"/>
        <meta-data android:name="SDK_APPID" android:value="6428"/>
        <meta-data android:name="SDK_GAMEID" android:value="7146"/>
        <meta-data android:name="SDK_AGENT" android:value="default"/>*/


        String YiKeYouContent = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("android:authorities=\"(.*?)\"");
        Matcher m = p.matcher(YiKeYouContent);
        m.find();
        String pName = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(pName, pname);
        FileUtil.write(sdkplugin, YiKeYouContent);

        String  screenOrientation=prop.getProperty("screenOrientation");
        String  YG_APPID=prop.getProperty("YG_APPID");
        String SDK_APPID=prop.getProperty("SDK_APPID");
        String SDK_GAMEID=prop.getProperty("SDK_GAMEID");
       // String SDK_AGENT=prop.getProperty("SDK_AGENT");



        //screenOrientation:0
         p = Pattern.compile("<meta-data android:name=\"screenOrientation\" android:value=\"(.*?)\"/>");
         m = p.matcher(YiKeYouContent);
         m.find();
        String orientation = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(orientation, "screenOrientation:"+screenOrientation);



        //YG_APPID:190110295422
        p = Pattern.compile("<meta-data android:name=\"YG_APPID\" android:value=\"(.*?)\"/>");
        m = p.matcher(YiKeYouContent);
        m.find();
        String yg_appid = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(yg_appid, "YG_APPID:"+YG_APPID);



     /*   //YG_SPLASH:0
        p = Pattern.compile("<meta-data android:name=\"YG_SPLASH\" android:value=\"(.*?)\"/>");
        m = p.matcher(YiKeYouContent);
        m.find();
        String splash = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(splash, "YG_SPLASH:"+YG_SPLASH);*/



        p = Pattern.compile("<meta-data android:name=\"SDK_APPID\" android:value=\"(.*?)\"/>");
        m = p.matcher(YiKeYouContent);
        m.find();
        String sdk_appid = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(sdk_appid, SDK_APPID);



        p = Pattern.compile("<meta-data android:name=\"SDK_GAMEID\" android:value=\"(.*?)\"/>");
        m = p.matcher(YiKeYouContent);
        m.find();
        String gameid = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(gameid, SDK_GAMEID);




      /*  p = Pattern.compile("<meta-data android:name=\"SDK_AGENT\" android:value=\"default\"/>");
        m = p.matcher(YiKeYouContent);
        m.find();
        String agent = m.group(1);
        YiKeYouContent = YiKeYouContent.replaceAll(agent, SDK_AGENT);*/



        /*p = Pattern.compile("<provider android:authorities=\"(.*?).sdkinsapk\"");
        m = p.matcher(YiKeYouContent);
        m.find();
        String pn = m.group(1);*/


        YiKeYouContent = YiKeYouContent.replaceAll("com.demo.sdkinsapk", pname+".sdkinsapk");


        FileUtil.write(sdkplugin, YiKeYouContent);
    }


    @Override
    protected String handleApplication(String manifest) {
        return replaceApplication("com.maya.sdk.m.platform.YxFanApplication", manifest);
    }






}
