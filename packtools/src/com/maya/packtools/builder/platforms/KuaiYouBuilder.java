package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class KuaiYouBuilder extends BaseBuilder {

	public KuaiYouBuilder(ApkParser apkParser) {
        super(apkParser);

    }
    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

        String mAppId = oldPro.getProperty("mAppId");
        String appKey = oldPro.getProperty("mAppKey");
        newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
        newPro.setProperty("mAppKey", ZipMain.zipOption("0", appKey));

    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        String content = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("android:authorities=\"(.*?).FileProvider\"");
        Matcher m = p.matcher(content);
        m.find();
        String packagename = m.group(1);
        content = content.replaceAll(packagename, pname);
        FileUtil.write(sdkplugin, content);
    }
}
