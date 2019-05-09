package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class XianTuBuilder extends BaseBuilder {
    public XianTuBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

        String channelId = oldPro.getProperty("channelId");
        String channelName = oldPro.getProperty("channelName");
        String gameId = oldPro.getProperty("gameId");
        String gameName = oldPro.getProperty("gameName");
        String appId = oldPro.getProperty("appId");
        String appKey = oldPro.getProperty("appKey");
        String serverUrl = oldPro.getProperty("serverUrl");

        newPro.setProperty("mAppId", ZipMain.zipOption("0", appId));
        newPro.setProperty("mAppKey", ZipMain.zipOption("0", appKey));
        newPro.setProperty("gameId", gameId);

        newPro.setProperty("extra1", channelId);
        newPro.setProperty("extra2", channelName);
        newPro.setProperty("extra3", gameName);
        newPro.setProperty("extra4", serverUrl);

    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        String sdk_content = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("android:authorities=\"(.*?).fileprovider\"");
        Matcher m = p.matcher(sdk_content);
        m.find();
        String packname = m.group(1);
        sdk_content = sdk_content.replaceAll(packname, pname);
        FileUtil.write(sdkplugin, sdk_content);
    }



}
