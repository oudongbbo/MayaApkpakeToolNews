package com.maya.packtools.builder.platforms;

import java.io.File;
import java.util.List;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.utils.encrypt.ZipMain;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.config.Common;

import static com.maya.packtools.builder.Platforms.SDK_NAME_MAYA;


public class HuaweiBuilder extends BaseBuilder {


    public HuaweiBuilder(ApkParser apkParser) {
        super(apkParser);

    }


    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

        String mAppId = oldPro.getProperty("appid").trim();
        String cpid = oldPro.getProperty("cpid").trim();

        newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
        newPro.setProperty("mPayId", ZipMain.zipOption("0", cpid));
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

        String hwContent = FileUtil.read(sdkplugin);

        //替换appid
        Pattern p = Pattern.compile("<meta-data android:name=\"com.huawei.hms.client.appid\" android:value=\"appid=(.*?)\"/>");
        Matcher m = p.matcher(hwContent);
        m.find();
        String appid = m.group(1);
        hwContent = hwContent.replaceAll(appid, prop.getProperty("appid"));

        //替换CPID
        p = Pattern.compile("<meta-data android:name=\"com.huawei.hms.client.cpid\" android:value=\"cpid=(.*?)\"/>");
        m = p.matcher(hwContent);
        m.find();
        String cpid = m.group(1);
        hwContent = hwContent.replaceAll(cpid, prop.getProperty("cpid"));

        //替换包名相关
        p = Pattern.compile("android:authorities=\"(.*?).updateSdk.fileProvider\"");
        m = p.matcher(hwContent);
        m.find();
        String pkgName = m.group(1);
        hwContent = hwContent.replaceAll(pkgName, pname);


        p = Pattern.compile("android:authorities=\"(.*?).hms.update.provider\"");
        m = p.matcher(hwContent);
        m.find();
        String pkgName1 = m.group(1);
        hwContent = hwContent.replaceAll(pkgName1, pname);


        FileUtil.write(sdkplugin, hwContent);

    }


    @Override
    protected String handleApplication(String manifest) {

        String menifestFilePath = Common.getApkTempPath(apkParser) + System.getProperty("file.separator") + "AndroidManifest.xml";

        List<String> unionLines = FileUtil.readAllLines(menifestFilePath, "unionpay");
        List<String> alipays = FileUtil.readAllLines(menifestFilePath, "alipay");
        if (unionLines.size() > 0) {
            for (String line : unionLines) {
                manifest = manifest
                        .replace(line, "");
            }
        }
        if (alipays.size() > 0) {
            for (String line : alipays) {
                manifest = manifest
                        .replace(line, "");
            }
        }



        if(SDK_NAME_MAYA.equals("leidong")){
            return replaceApplication("com.leidong.sdk.m.platform.HuaweiSDKApplication", manifest);
        }else{
            return replaceApplication("com.maya.sdk.m.platform.HuaweiSDKApplication", manifest);
        }


    }


    @Override
    protected void handleLibsAfterCopy() {

        File o = new File(Common.getApkTempPath(apkParser) + File.separator + "assets" + File.separator + "apay.apk");
        File x = new File(Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + "com" + File.separator + "alipay");
        File y = new File(Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + "com" + File.separator + "unionpay");
        File z = new File(Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + "com" + File.separator + "UCMobile");
        File k = new File(Common.getApkTempPath(apkParser) + File.separator + "asset" + File.separator + "alipay_plugin");
        File l = new File(Common.getApkTempPath(apkParser) + File.separator + "res" + File.separator + "raw" + File.separator + "alipay_plugin");

        if (o.exists()) {
            FileUtil.delDir(o);
        }
        if (x.exists()) {
            FileUtil.delDir(x);
        }
        if (y.exists()) {
            FileUtil.delDir(y);
        }
        if (z.exists()) {
            FileUtil.delDir(z);
        }
        if (k.exists()) {
            FileUtil.delDir(k);
        }
        if (l.exists()) {
            FileUtil.delDir(l);
        }

        FileUtil.delPayFiles(Common.getApkTempPath(apkParser));
    }


}
