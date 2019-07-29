package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class M4399Builder extends BaseBuilder {
    public M4399Builder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        String appKey = oldPro.getProperty("mAppKey");
        newPro.setProperty("mAppKey",  ZipMain.zipOption("0", appKey));
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        String _4399Content = FileUtil.read(sdkplugin);
        //android:authorities="com.feimiao.ky.wzzg.m4399.FileProvider"
        Pattern p = Pattern.compile("android:authorities=\"(.*?).FileProvider\"");
        Matcher m = p.matcher(_4399Content);
        m.find();
        String packName = m.group(1);
        _4399Content = _4399Content.replaceAll(packName, pname);
        FileUtil.write(sdkplugin, _4399Content);
    }
}
