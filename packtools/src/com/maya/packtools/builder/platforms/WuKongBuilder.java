package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class WuKongBuilder extends BaseBuilder {
    public WuKongBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

        String sdk_content = FileUtil.read(sdkplugin);


        String channel_id = prop.getProperty("SDK_CHANNEL_ID");
        String gameid = prop.getProperty("SDK_GAME_ID");


        Pattern p = Pattern.compile("<meta-data android:name=\"5kSDK_CHANNEL_ID\" android:value=\"(.*?)\"/>");
        Matcher m = p.matcher(sdk_content);
        m.find();
        String CHANNEL_ID = m.group(1);
        sdk_content = sdk_content.replaceAll(CHANNEL_ID, channel_id);


        p = Pattern.compile("<meta-data android:name=\"5kSDK_GAME_ID\" android:value=\"(.*?)\"/>");
        m = p.matcher(sdk_content);
        m.find();
        String GAME_ID = m.group(1);
        sdk_content = sdk_content.replaceAll(GAME_ID, gameid);


        FileUtil.write(sdkplugin, sdk_content);

    }


}
