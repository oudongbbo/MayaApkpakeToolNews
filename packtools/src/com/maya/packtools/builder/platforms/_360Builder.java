package com.maya.packtools.builder.platforms;

import java.io.File;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.utils.encrypt.ZipMain;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.config.Common;


public class _360Builder extends BaseBuilder {

    public _360Builder(ApkParser apkParser) {
        super(apkParser);

    }

    @Override
    protected String handleApplication(String manifest) {
        return replaceApplication("com.maya.sdk.m.platform.QiHooApplication", manifest);
    }

    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

        String appid = prop.getProperty("appid").trim();
        String appkey = prop.getProperty("appkey").trim();
        String secret = prop.getProperty("secret").trim();

        String _360Content = FileUtil.read(sdkplugin);
       // Pattern p = Pattern.compile("<meta-data android:name=\"QHOPENSDK_APPID\" android:value=\"204203446\"/>");
      //  Matcher m = p.matcher(_360Content);
    //    m.find();
        String QHOPENSDK_APPID ="204203446";
        _360Content = _360Content.replaceAll(QHOPENSDK_APPID, appid);


        //顺便替换了这里，<data android:host="f1938e2ded5a47050726a658d117082f" android:pathPrefix="/opengames" android:scheme="qihoosdkgame"/>
      //  p = Pattern.compile("<meta-data android:name=\"QHOPENSDK_APPKEY\" android:value=\"(.*?)\"/>");
      //  m = p.matcher(_360Content);
      //  m.find();
       String QHOPENSDK_APPKEY = "79e3af20a6e43cc0572881fc8f996202";
        _360Content = _360Content.replaceAll(QHOPENSDK_APPKEY, appkey);


    //    p = Pattern.compile("<meta-data android:name=\"QHOPENSDK_PRIVATEKEY\" android:value=\"(.*?)\"/>");
    //    m = p.matcher(_360Content);
   //     m.find();
        String QHOPENSDK_PRIVATEKEY ="21c38acfb7f912a9d8f66b0f07573feb";
        _360Content = _360Content.replaceAll(QHOPENSDK_PRIVATEKEY, ZipMain.Md5(secret + "#" + appkey));


        //替换包名相关
        //-----

//		<data android:host="com.feimiao.channel.sll"/>
//		android:authorities="com.feimiao.channel.sll.cx.accounts.syncprovider"
        //<data android:host="com.ttfun.dszn.qihoo" />
        //替换com.qihoo.gamecenter.sdk.activity.ContainerActivity下的<intent-filter>
      // p = Pattern.compile("<data android:host=\"(.*?)\"/>");
        //m = p.matcher(_360Content);
        //m.find();
        String host ="com.feimiao.ky.wzzg.qihoo";
        _360Content = _360Content.replaceAll(host, pname);

        FileUtil.write(sdkplugin, _360Content);

    }

    @Override
    public void handleResValue() {
        super.handleResValue();

        //res/xml/qihoo_game_sdk_sync_adapter.xml

        String TempXmlPath = Common.getApkTempPath(apkParser) + File.separator + "res" + File.separator + "xml" + File.separator + "qihoo_game_sdk_sync_adapter.xml";
        String xmlContent = FileUtil.read(TempXmlPath);
        /*包名额外字段替换，例如处理provider*/
        Pattern p2 = Pattern.compile("android:contentAuthority=\"(.*?).cx.accounts.syncprovider\"");
        Matcher m2 = p2.matcher(xmlContent);
        if (m2.find()) {
            String oldAuthory = m2.group(1);
            xmlContent = xmlContent.replaceFirst(oldAuthory, pname); //替换包名
        }
        FileUtil.write(TempXmlPath, xmlContent);

    }

    @Override
    protected void handleLibsBeforeCopy() {

        File sll_alipay = new File(Common.getApkTempPath(apkParser)
                + System.getProperty("file.separator") + "smali"
                + System.getProperty("file.separator") + "com"
                + System.getProperty("file.separator") + "alipay");

        if (sll_alipay.exists()) {
            FileUtil.delDir(sll_alipay);
            LogUtil.showLog("360特殊处理，干掉alipay的代码：\n" + sll_alipay.toString());
        }
    }


//    @Override
//    protected void handleAndroidManifestBySDK() {
//        super.handleAndroidManifestBySDK();
//
//        String oldPnameFile = Common.getFixsPathBySDK(SDK) + File.separator + "WXEntryActivity.smali";
//        String content = FileUtil.read(oldPnameFile).replaceAll("com\\/ttfun\\/dszn\\/qihoo", pname.replaceAll("\\.", "\\/"));
//        System.out.println("------content:" + content);
//
//        String parentPath = Common.getApkTempPath(apkParser) + System.getProperty("file.separator") + "smali" + System.getProperty("file.separator");
//        System.out.println("---parentPath:" + parentPath);
//        String filePath = "";
//        if (isWindowsOS()) {
//            filePath = pname.replaceAll("\\.", "\\\\") + File.separator + "wxapi";
//        } else {
//            filePath = pname.replaceAll("\\.", "\\/") + File.separator + "wxapi";
//        }
//        String finalFilePath = parentPath + filePath + File.separator + "WXEntryActivity.smali";
//
//        File finalFile = new File(parentPath + filePath);
//        if (!finalFile.exists()) {
//            finalFile.mkdirs();
//        }
//
//        File finalFilePathFile = new File(finalFilePath);
//        if (!finalFilePathFile.exists()) {
//            try {
//                finalFilePathFile.createNewFile();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
//
//        FileUtil.write(finalFilePath, content);
//    }
//
//
//    public static boolean isWindowsOS() {
//
//        String osName = System.getProperty("os.name");
//
//        if (osName == null) {
//            return false;
//        } else {
//            if (osName.contains("Windows")) {
//                return true;
//            } else {
//                return false;
//            }
//        }
//    }


}
