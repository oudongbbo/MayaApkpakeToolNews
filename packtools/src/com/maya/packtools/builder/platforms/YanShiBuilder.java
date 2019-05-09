package com.maya.packtools.builder.platforms;

import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.config.Common;
import com.maya.packtools.model.ApkParser;

import java.io.*;
import java.util.Date;
import java.util.Properties;

/***
 * 炎石渠道
 */
public class YanShiBuilder extends BaseBuilder {


    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        super.handlePlatformComConfig(newPro, oldPro);
/*
        //动态替换渠道中assets目录下配置的参数
        String channel = Common.getApkTempPath(apkParser) + System.getProperty("file.separator") + "assets" + System.getProperty("file.separator") + "channel.properties";

        String jstd = Common.getApkTempPath(apkParser) + System.getProperty("file.separator") + "assets" + System.getProperty("file.separator") + "jstd.properties";

        String pmconf = Common.getApkTempPath(apkParser) + System.getProperty("file.separator") + "assets" + System.getProperty("file.separator") + "pmconf.properties";

        String xlw_config = Common.getApkTempPath(apkParser) + System.getProperty("file.separator") + "assets" + System.getProperty("file.separator") + "xlw_config.properties";


        File tempFile = new File(channel);
        if (tempFile.exists()) {
            try {
                Properties appPro = new Properties();
                FileInputStream fis = new FileInputStream(channel);
                BufferedReader bf = new BufferedReader(new InputStreamReader(fis));
                appPro.load(bf);
                // 设置渠道id和游戏和游戏id
                appPro.setProperty("CHANNEL_ID", sdkConfig.getProperty("CHANNEL_ID"));
                appPro.setProperty("JS_DT_GAME_ID", sdkConfig.getProperty("JS_DT_GAME_ID"));

                // 重新保存
                FileOutputStream sdkfos = new FileOutputStream(channel);
                appPro.store(sdkfos, new Date().toGMTString());
                sdkfos.close();

            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {

        }


        File jstdFile = new File(jstd);
        if (jstdFile.exists()) {
            try {
                Properties appPro = new Properties();
                FileInputStream fis = new FileInputStream(jstd);
                BufferedReader bf = new BufferedReader(new InputStreamReader(fis));
                appPro.load(bf);

              //  appPro.setProperty("AD_TRACKING_ID", sdkConfig.getProperty("AD_TRACKING_ID"));
               // appPro.setProperty("TD_APP_ID", sdkConfig.getProperty("TD_APP_ID"));
                appPro.setProperty("TOUTIAO_APP_ID", sdkConfig.getProperty("TOUTIAO_APP_ID"));

                // 重新保存
                FileOutputStream sdkfos = new FileOutputStream(jstd);
                appPro.store(sdkfos, new Date().toGMTString());
                sdkfos.close();

            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {

        }

        *//*  File pmconfFile = new File(pmconf);
        if (pmconfFile.exists()) {
            try {
                Properties appPro = new Properties();
                FileInputStream fis = new FileInputStream(pmconf);
                BufferedReader bf = new BufferedReader(new InputStreamReader(fis));
                appPro.load(bf);

                appPro.setProperty("APP_ID", sdkConfig.getProperty("APP_ID"));
                appPro.setProperty("RSAPUBLICKEY", sdkConfig.getProperty("RSAPUBLICKEY"));
                appPro.setProperty("MERKEY", sdkConfig.getProperty("MERKEY"));
                appPro.setProperty("RSAPRIVATKEY", sdkConfig.getProperty("RSAPRIVATKEY"));
                appPro.setProperty("MERCHANT_ID", sdkConfig.getProperty("MERCHANT_ID"));
                appPro.setProperty("PM_LOG", sdkConfig.getProperty("PM_LOG"));

                // 重新保存
                FileOutputStream sdkfos = new FileOutputStream(pmconf);
                appPro.store(sdkfos, new Date().toGMTString());
                sdkfos.close();

            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {

        }*//*



        File xlw_configFile = new File(xlw_config);
        if (xlw_configFile.exists()) {
            try {
                Properties appPro = new Properties();
                FileInputStream fis = new FileInputStream(xlw_config);
                BufferedReader bf = new BufferedReader(new InputStreamReader(fis));
                appPro.load(bf);
                appPro.setProperty("gamegs_key", sdkConfig.getProperty("gamegs_key"));
                appPro.setProperty("platform", sdkConfig.getProperty("platform"));
                appPro.setProperty("sitename", sdkConfig.getProperty("sitename"));
                appPro.setProperty("channelId", sdkConfig.getProperty("channelId"));
                appPro.setProperty("short_name", sdkConfig.getProperty("short_name"));
                //appPro.setProperty("kf_qq", sdkConfig.getProperty("kf_qq"));

                // 重新保存
                FileOutputStream sdkfos = new FileOutputStream(xlw_config);
                appPro.store(sdkfos, new Date().toGMTString());
                sdkfos.close();

            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {

        }*/


    }

    public YanShiBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        super.handleSdkPlugins(sdkplugin, prop);

    }


    @Override
    protected String handleApplication(String manifest) {
        return replaceApplication("com.maya.sdk.m.platform.ToutiaoApp", manifest);
    }
}
