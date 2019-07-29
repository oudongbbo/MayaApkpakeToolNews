package com.maya.packtools.builder.platforms;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.config.Common;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;

import java.io.File;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class JinliBuilder extends BaseBuilder {

    public JinliBuilder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

        String mAppId = oldPro.getProperty("APIKey").trim();
        newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));

    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

        String sdkpluginContent = FileUtil.read(sdkplugin);
        //android:authorities="com.coolpay.example.fileprovider"
        Pattern p = Pattern.compile("android:authorities=\"(.*?).fileprovider\"");
        Matcher m = p.matcher(sdkpluginContent);
        m.find();
        String packName = m.group(1);
        sdkpluginContent = sdkpluginContent.replaceAll(packName, pname);
        FileUtil.write(sdkplugin, sdkpluginContent);

    }


    //处理微信WXPayEntryActivity
    @Override
    public void handleSmali(int SDK) {

        sendLog("开始处理 ---------------------> WXPayEntryActivity");
        String str = "com.hw.maya.kyzs.am.wxapi.WXPayEntryActivity";
        String oldwxPath = str.replace(".", File.separator);
        oldwxPath = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + oldwxPath + ".smali";


        sendLog("WXPayEntryActivity 旧路径 ---------------------> "+oldwxPath);

        //替换smali里的包名
        String content = FileUtil.read(oldwxPath);
        Pattern p = Pattern.compile("public (.*?)/wxapi/WXPayEntryActivity;");
        Matcher m = p.matcher(content);
        m.find();
        String packName = m.group(1);
        String targetString = pname;
        content = content.replaceAll(packName, "L"+targetString.replace(".", "/"));
        FileUtil.write(oldwxPath, content);

        //复制WXPayEntryActivity 到当前包名目录下
        String newWxPath = pname;
        newWxPath = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + newWxPath.replace(".", File.separator);


        String sourceDir = "com.hw.maya.kyzs.am";
        sourceDir  = sourceDir.replace(".", File.separator);
        sourceDir = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + sourceDir;
        FileUtil.copyDirectiory(sourceDir,newWxPath);
        sendLog("----------------> WXPayEntryActivity 处理完毕！ 复制到新目录下："+ newWxPath);

        //删除旧文件
        FileUtil.delDir(new File(oldwxPath));
        sendLog("----------------> 删除WXPayEntryActivity旧文件及目录！");

    }


}
