package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ByouhuiBuilder extends BaseBuilder {
    public ByouhuiBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        super.handleSdkPlugins(sdkplugin, prop);


        String bt_appid = prop.getProperty("BT_APPID");
        String bt_gameid = prop.getProperty("BT_GAMEID");
        String bt_agent = prop.getProperty("BT_AGENT");
        String tianYuContent = FileUtil.read(sdkplugin);


        Pattern p = Pattern.compile("<meta-data android:name=\"BT_APPID\" android:value=\"(.*?)\"/>");
        Matcher m = p.matcher(tianYuContent);
        m.find();
        String appid = m.group(1);
        tianYuContent = tianYuContent.replaceAll(appid, bt_appid);
        FileUtil.write(sdkplugin, tianYuContent);



        p = Pattern.compile("<meta-data android:name=\"BT_GAMEID\" android:value=\"(.*?)\"/>");
        m = p.matcher(tianYuContent);
        m.find();
        String gameid = m.group(1);
        tianYuContent = tianYuContent.replaceAll(gameid, bt_gameid);
        FileUtil.write(sdkplugin, tianYuContent);



        p = Pattern.compile("<meta-data android:name=\"BT_AGENT\" android:value=\"(.*?)\"/>");
        m = p.matcher(tianYuContent);
        m.find();
        String agent = m.group(1);
        tianYuContent = tianYuContent.replaceAll(agent, bt_agent);
        FileUtil.write(sdkplugin, tianYuContent);


    }


    @Override
    protected String handleApplication(String manifest) {
        return replaceApplication("com.bt.sdk.base.SDKApp", manifest);
    }


    @Override
    protected void handleTempRFiles() {

        String finalPnamePath = "com.byouhui.demo";
        LogUtil.showLog("从此包名下复制文件-->" + finalPnamePath);

        copyFileAndReplacePackageName(SDK, finalPnamePath, pname);
    }


}
