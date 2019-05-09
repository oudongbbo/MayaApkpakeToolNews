package com.maya.packtools.model;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.Properties;

import com.maya.packtools.config.Common;
import com.maya.base.utils.FileUtil;
import com.maya.base.utils.RarUtil;


public class SdkConfig {


    public static final String SDK_CONFIGFILE = "mayaGame.ini";

    public static String getSdkGid(String apkPath) {


        System.out.println("获取Apk的gameID");

        File apk = new File(apkPath);
        if (!apk.exists()) {
            System.out.println("apk不存在");
            return "";
        }

        String apkName = apk.getName();
        String apkPreName = apkName.substring(0, apkName.lastIndexOf("."));
        String apkParentPath = apk.getParentFile().getAbsolutePath();

        String gid = "";
        String gidParentPath = apkParentPath + File.separator + apkPreName + File.separator;

        File gidParentFile = new File(gidParentPath);
        if (!gidParentFile.exists()) {
            gidParentFile.mkdirs();
        }

        if (RarUtil.unRar(apkPath, "assets" + File.separator + SDK_CONFIGFILE, gidParentPath)) {

            String gidPath = gidParentPath + File.separator + SDK_CONFIGFILE;
            Properties sdkConfig = new Properties();
            FileInputStream fis;
            try {

                fis = new FileInputStream(gidPath);
                BufferedReader bf = new BufferedReader(new InputStreamReader(fis));
                sdkConfig.load(bf);

                gid = sdkConfig.getProperty("gid");

                System.out.println("获取到的gid=" + gid);

                if (gidParentFile.exists()) {
                    System.out.println("GID临时父目录" + gidParentFile.getAbsolutePath());
                    FileUtil.delDir(gidParentFile);
                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return gid;
            } catch (IOException e) {
                e.printStackTrace();
                return gid;
            }
        }

        return gid;

    }


    public static void changeSdkConfig(ApkParser apkParser, String outPath, String inputGid, String inputPid, String inputMid) {

        System.out.println("输入的参数如下:");
        System.out.println("gid=" + inputGid);
        System.out.println("pid=" + inputPid);
        System.out.println("mid=" + inputMid);

        String configRootPath = Common.APPCONFIG_TEMP + apkParser.apkPreName + File.separator;
        String configParentPath = configRootPath + "assets";
        String appConfigPath = configParentPath + File.separator + SDK_CONFIGFILE;

        System.out.println("临时渠道标示的路径：" + appConfigPath);
        System.out.println("临时渠道标示父目录:" + configParentPath);
        System.out.println("临时渠道标示根目录:" + configRootPath);

        File configRootFile = new File(configRootPath);
        File configParentFile = new File(configParentPath);

        if (!configParentFile.exists()) {
            configParentFile.mkdirs();
            System.out.println("创建临时渠道标示父目录");
        }

        System.out.println("解压缩:" + "assets" + File.separator + SDK_CONFIGFILE);

        if (RarUtil.unRar(apkParser.apkPath, "assets" + File.separator + SDK_CONFIGFILE, configParentPath)) {

            Properties sdkConfig = new Properties();
            try {
                FileInputStream fis;
                fis = new FileInputStream(appConfigPath);
                BufferedReader bf = new BufferedReader(new InputStreamReader(fis));
                sdkConfig.load(bf);
                String gid = sdkConfig.getProperty("gid");
                String pid = sdkConfig.getProperty("pid");
                String mid = sdkConfig.getProperty("mid");

                System.out.println("gid=" + gid);
                System.out.println("pid=" + pid);
                System.out.println("mid=" + mid);

                if (inputPid != null && !"".equals(inputPid)) {
                    sdkConfig.setProperty("pid", inputPid);
                    pid = inputPid;
                }
                if (inputGid != null && !"".equals(inputGid)) {
                    sdkConfig.setProperty("gid", inputGid);
                    gid = inputGid;
                }
                if (inputMid != null && !"".equals(inputMid)) {
                    sdkConfig.setProperty("mid", inputMid);
                    mid = inputMid;
                }

                FileOutputStream sdkfos = new FileOutputStream(appConfigPath);
                sdkConfig.store(sdkfos, new Date().toGMTString());
                sdkfos.close();
                fis.close();

                System.out.println("复制apk的到临时目录");

                String apkTempPath = configRootPath + pid + "_" + gid + "_" + mid + ".apk";

                File apkTempFile = new File(apkTempPath);
                if (!apkTempFile.exists()) {
                    apkTempFile.createNewFile();
                }

                FileUtil.copyFile(new File(apkParser.apkPath), apkTempFile);
                System.out.println("临时apk:" + apkTempPath);

                System.out.println("删除apk中的 " + SDK_CONFIGFILE);
                String deletePath = "  " + "assets" + File.separator + SDK_CONFIGFILE;
                RarUtil.deleteFile(apkTempPath, deletePath);

                System.out.println("新增apk中的 " + SDK_CONFIGFILE);
                RarUtil.addNewFile2Rar(apkTempPath, configParentPath);

                System.out.println("复制");
                File outFile = new File(outPath);
                FileUtil.copyFile(apkTempFile, outFile);

                System.out.println("删除文件");

                if (configRootFile.exists()) {
                    System.out.println("删除临时目录:" + configRootFile.getAbsolutePath());
                    FileUtil.delDir(configRootFile);
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

}
