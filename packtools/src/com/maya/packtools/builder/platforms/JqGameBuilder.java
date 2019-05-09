package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class JqGameBuilder extends BaseBuilder {
    public JqGameBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        String JqContent = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("android:value=\"(.*?)\"");
        Matcher m = p.matcher(JqContent);
        m.find();
        String APPID = m.group(1);
        JqContent = JqContent.replaceAll(APPID, prop.getProperty("mAppId"));

        p = Pattern.compile("android:authorities=\"(.*?).fileprovider\"");
        m = p.matcher(JqContent);
        m.find();
        String packageName = m.group(1);
        JqContent = JqContent.replaceAll(packageName, pname);


        p = Pattern.compile("android:screenOrientation=\"(.*?)\"");
        m = p.matcher(JqContent);
        m.find();
        String screenOrientation = m.group(1);
        JqContent = JqContent.replaceAll(screenOrientation, "behind");


        FileUtil.write(sdkplugin, JqContent);
    }


    @Override
    protected String handleApplication(String manifest) {
        return replaceApplication("com.kingcheergame.jqgamesdk.app.JqApplication", manifest);
    }
}
