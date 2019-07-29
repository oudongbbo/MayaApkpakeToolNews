package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class LenovoBuilder extends BaseBuilder {

    public LenovoBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

        String mAppId = oldPro.getProperty("openid").trim();
        newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));

    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

        String mAppId = prop.getProperty("openid").trim();


        String _levonoContent = FileUtil.read(sdkplugin);

        //替换appid
        Pattern p = Pattern.compile("<meta-data android:name=\"lenovo.open.appid\" android:value=\"(.*?)\"/>");
        Matcher m = p.matcher(_levonoContent);
        m.find();
        String open_id = m.group(1);
        _levonoContent = _levonoContent.replaceAll(open_id, mAppId);


        p = Pattern.compile("<meta-data android:name=\"lenovo:channel\" android:value=\"(.*?)\"/>");
        m = p.matcher(_levonoContent);
        m.find();
        String open_id2 = m.group(1);
        _levonoContent = _levonoContent.replaceAll(open_id2, mAppId);

        p = Pattern.compile("<action android:name=\"(.*?)\"> </action>");
        m = p.matcher(_levonoContent);
        m.find();
        String open_id3 = m.group(1);
        _levonoContent = _levonoContent.replaceAll(open_id3, mAppId);

        p = Pattern.compile("<meta-data android:name=\"alipayquick\" android:value=\"(.*?)\"/>");
        m = p.matcher(_levonoContent);
        m.find();
        String open_id4 = m.group(1);
        _levonoContent = _levonoContent.replaceAll(open_id4, mAppId);


        p = Pattern.compile("android:authorities=\"(.*?).lenovo.fileprovider\"");
        m = p.matcher(_levonoContent);
        m.find();
        String packName = m.group(1);
        _levonoContent = _levonoContent.replaceAll(packName, pname);


        p = Pattern.compile("<category android:name=\"(.*?)\"/>");
        m = p.matcher(_levonoContent);
        m.find();
        String packName1 = m.group(1);
        _levonoContent = _levonoContent.replaceAll(packName1, pname);


        //修改渠道SDK Activity的横竖屏
        int isLandScape = Integer.parseInt(prop.getProperty("isLandScape"));
       // p = Pattern.compile("android:name=\"com.lenovo.lsf.gamesdk.ui.WelcomeActivity\" android:screenOrientation=\"(.*?)\"");
      //  m = p.matcher(_levonoContent);
      //  m.find();
      //  String screenOrientation = m.group(1);
        _levonoContent = _levonoContent.replace("WelcomeActivityOrientation", isLandScape == 0 ? "portrait" : "landscape");


       // p = Pattern.compile("android:name=\"com.lenovo.lsf.lenovoid.ui.KeyLoginActivity\" android:screenOrientation=\"(.*?)\"");
       // m = p.matcher(_levonoContent);
      //  m.find();
      //  String screenOrientation1 = m.group(1);
        _levonoContent = _levonoContent.replace("KeyLoginActivityOrientation", isLandScape == 0 ? "portrait" : "landscape");


       // p = Pattern.compile("android:name=\"com.lenovo.lsf.lenovoid.ui.PsLoginActivity\" android:screenOrientation=\"(.*?)\"");
      //  m = p.matcher(_levonoContent);
      //  m.find();
      //  String screenOrientation2 = m.group(1);
        _levonoContent = _levonoContent.replace("PsLoginActivityOrientation", isLandScape == 0 ? "portrait" : "landscape");


        FileUtil.write(sdkplugin, _levonoContent);

    }

    @Override
    protected void handleAndroidManifestBySDK() {

        String manifestContent = FileUtil.read(ManifestPath);
        manifestContent = manifestContent.replaceFirst("android.intent.action.MAIN", "lenovoid.MAIN");
        manifestContent = manifestContent.replaceFirst("android.intent.category.LAUNCHER", "android.intent.category.DEFAULT");
        FileUtil.write(ManifestPath, manifestContent);
    }


}
