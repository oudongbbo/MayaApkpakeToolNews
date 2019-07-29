package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.config.Common;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.io.File;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class _360Builder extends BaseBuilder {

    public _360Builder(ApkParser apkParser) {
        super(apkParser);

    }

    @Override
    protected String handleApplication(String manifest) {
        return replaceApplication("com.leidong.sdk.m.platform.QiHooApplication", manifest);
    }

    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

        String appid = prop.getProperty("appid").trim();
        String appkey = prop.getProperty("appkey").trim();
        String secret = prop.getProperty("secret").trim();


        String weixin_appid = prop.getProperty("weixin_appid").trim();
        String qq_appid = prop.getProperty("qq_appid").trim();


       //  <meta-data android:name="QHOPENSDK_APPKEY" android:value="b0b4905fd0b63ef506ff081613f255f0"/>
    //    <meta-data android:name="QHOPENSDK_PRIVATEKEY" android:value="dd09f2d209a268973d55a29d7f7961a4"/>
     //   <meta-data android:name="QHOPENSDK_APPID"  android:value="204466306"/>


        String _360Content = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("<meta-data android:name=\"QHOPENSDK_APPID\"  android:value=\"(.*?)\"/>");
        Matcher m = p.matcher(_360Content);
        m.find();
        String QHOPENSDK_APPID = m.group(1);
        _360Content = _360Content.replaceAll(QHOPENSDK_APPID, appid);


        //顺便替换了这里，<data android:host="f1938e2ded5a47050726a658d117082f" android:pathPrefix="/opengames" android:scheme="qihoosdkgame"/>
        p = Pattern.compile("<meta-data android:name=\"QHOPENSDK_APPKEY\" android:value=\"(.*?)\"/>");
        m = p.matcher(_360Content);
        m.find();
        String QHOPENSDK_APPKEY = m.group(1);
        _360Content = _360Content.replaceAll(QHOPENSDK_APPKEY, appkey);


        p = Pattern.compile("<meta-data android:name=\"QHOPENSDK_PRIVATEKEY\" android:value=\"(.*?)\"/>");
        m = p.matcher(_360Content);
        m.find();
        String QHOPENSDK_PRIVATEKEY = m.group(1);
        _360Content = _360Content.replaceAll(QHOPENSDK_PRIVATEKEY, ZipMain.Md5(secret + "#" + appkey));




        // <data android:host="com.qihoo.gamecenter.sdk.demosp"/>
        p = Pattern.compile("<data android:host=\"(.*?)\"/>");
        m = p.matcher(_360Content);
        m.find();
        String host = m.group(1);
        _360Content = _360Content.replaceAll(host, pname);

  // android:authorities="com.qrzx.kkkwan.cx.accounts.syncprovider"
        p = Pattern.compile("android:authorities=\"(.*?).cx.accounts.syncprovider\"");
        m = p.matcher(_360Content);
        m.find();
        String packName = m.group(1);
        _360Content = _360Content.replaceAll(packName, pname);


   //   微信appid   <meta-data android:name="QHOPENSDK_WEIXIN_APPID" android:value="wx38c06d349170365c"/>
        p = Pattern.compile("<meta-data android:name=\"QHOPENSDK_WEIXIN_APPID\" android:value=\"(.*?)\"/>");
        m = p.matcher(_360Content);
        m.find();
        String wxappid = m.group(1);
        _360Content = _360Content.replaceAll(wxappid, weixin_appid==""?"wx38c06d349170365c":weixin_appid);

    // <meta-data android:name="QHOPENSDK_QQAPPID" android:value="101434511"/>
        p = Pattern.compile("<meta-data android:name=\"QHOPENSDK_WEIXIN_APPID\" android:value=\"(.*?)\"/>");
        m = p.matcher(_360Content);
        m.find();
        String qqAppid = m.group(1);
        _360Content = _360Content.replaceAll(qqAppid, qq_appid==""?"101434511":qq_appid);

        FileUtil.write(sdkplugin, _360Content);

    }

    @Override
    public void handleResValue() {
        super.handleResValue();

        //res/xml/qihoo_game_sdk_sync_adapter.xml

        String TempXmlPath = Common.getApkTempPath(apkParser) + File.separator + "res" + File.separator + "xml" + File.separator + "qihoo_game_sdk_sync_adapter.xml";
        String xmlContent = FileUtil.read(TempXmlPath);
        /*包名额外字段替换，例如处理provider*/
        Pattern p2 = Pattern.compile(" android:contentAuthority=\"(.*?).cx.accounts.syncprovider\"");
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



    //处理微信WXPayEntryActivity
    @Override
    public void handleSmali(int SDK) {

        sendLog("开始处理 ---------------------> WXPayEntryActivity");
        String str = "com.wx.wxapi.WXEntryActivity";
        String oldwxPath = str.replace(".", File.separator);
        oldwxPath = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + oldwxPath + ".smali";


        sendLog("WXPayEntryActivity 旧路径 ---------------------> "+oldwxPath);

        //替换smali里的包名
        String content = FileUtil.read(oldwxPath);
        Pattern p = Pattern.compile(".class public (.*?)/wxapi/WXEntryActivity;");
        Matcher m = p.matcher(content);
        m.find();
        String packName = m.group(1);
        String targetString = pname;
        content = content.replaceAll(packName, "L"+targetString.replace(".", "/"));
        FileUtil.write(oldwxPath, content);

        //复制WXPayEntryActivity 到当前包名目录下
        String newWxPath = pname;
        newWxPath = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + newWxPath.replace(".", File.separator);


        String sourceDir = "com.wx";
        sourceDir  = sourceDir.replace(".", File.separator);
        sourceDir = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + sourceDir;
        FileUtil.copyDirectiory(sourceDir,newWxPath);
        sendLog("----------------> WXPayEntryActivity 处理完毕！ 复制到新目录下："+ newWxPath);

        //删除旧文件
        FileUtil.delDir(new File(oldwxPath));
        sendLog("----------------> 删除WXPayEntryActivity旧文件及目录！");

    }




}
