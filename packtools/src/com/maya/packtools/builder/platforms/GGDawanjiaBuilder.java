package com.maya.packtools.builder.platforms;
import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class GGDawanjiaBuilder extends BaseBuilder {
    public GGDawanjiaBuilder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    protected String handleApplication(String manifest) {
        return replaceApplication("com.maya.sdk.m.platform.GGSDKApp", manifest);
    }


    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        String game_id = oldPro.getProperty("gameid").trim();
        newPro.setProperty("gameId", game_id);
    }

    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

        String ggContent = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("android:authorities=\"(.*?).provider.UnionGameProvider\"");
		Matcher m = p.matcher(ggContent);
		m.find();
		String packagename = m.group(1);
        ggContent = ggContent.replaceAll(packagename, pname);
        FileUtil.write(sdkplugin, ggContent);

    }
}
