package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TianyuYouBuilder extends BaseBuilder {


    public TianyuYouBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

      String   mainPath = prop.getProperty("mainPath");

        String tianYuContent = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("<meta-data android:name=\"JumpGameActivity\" android:value=\"(.*?)\"/>");
        Matcher m = p.matcher(tianYuContent);
        m.find();
        String gameMain = m.group(1);
        tianYuContent = tianYuContent.replaceAll(gameMain, mainPath);
        FileUtil.write(sdkplugin, tianYuContent);
		
		
        String isLandScape=prop.getProperty("isLandScape");
        int orientation=Integer.parseInt(isLandScape);

        if(orientation==0) {
            tianYuContent.replaceFirst("android:screenOrientation=\"behind\"","portrait");
        }else if(orientation==1) {
            tianYuContent.replaceFirst("android:screenOrientation=\"behind\"","landscape");
        }
        FileUtil.write(sdkplugin, tianYuContent);
		
    }



    @Override
    protected void handleAndroidManifestBySDK() {

        String manifestContent = FileUtil.read(ManifestPath);

        manifestContent = manifestContent.replaceFirst("android.intent.action.MAIN", "lenovoid.MAIN");
        manifestContent = manifestContent.replaceFirst("android.intent.category.LAUNCHER","android.intent.category.DEFAULT");

        FileUtil.write(ManifestPath, manifestContent);

    }


}
