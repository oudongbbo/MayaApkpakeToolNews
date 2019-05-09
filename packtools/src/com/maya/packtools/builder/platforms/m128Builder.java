package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class m128Builder extends BaseBuilder {
    public m128Builder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        String sdk_content = FileUtil.read(sdkplugin);
        String appid = prop.getProperty("appid");
        Pattern p = Pattern.compile("<meta-data android:name=\"128SY_APPID\" android:value=\"(.*?)\" />");
        Matcher m = p.matcher(sdk_content);
        m.find();
        String m128SY_APPID = m.group(1);
        sdk_content = sdk_content.replaceAll(m128SY_APPID, appid);
        FileUtil.write(sdkplugin, sdk_content);
    }


}
