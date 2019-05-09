package com.maya.packtools.config;

import java.io.File;
import java.util.Date;

import com.maya.packtools.builder.Platforms;
import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.packtools.model.ApkParser;

import static com.maya.base.utils.DateUtil.getFormatDate;

/**
 * Common
 *
 * @author louis
 */
public class Common {

    public static final String Default_SDKTAG = "maya";

    public static final String WinRarPath = "C:\\WinRAR\\WinRAR.exe";

    public static final String ROOT = System.getProperty("user.dir") + File.separator;
    public static final String OUTPUT = ROOT + "output" + File.separator;
    public static final String TEMP = ROOT + "temp" + File.separator;
    public static final String PLATFORM = ROOT + "platform" + File.separator;
    public static final String TOOLBOX = ROOT + "toolbox" + File.separator;
    //temp
    public static final String APK_TEMP = TEMP + "apk" + File.separator;
    public static final String GID_TEMP = TEMP + "gid" + File.separator;
    public static final String PLUGS_TEMP = TEMP + "plugs" + File.separator;
    public static final String MDID_TEMP = TEMP + "mid" + File.separator;
    public static final String APPCONFIG_TEMP = TEMP + "app_config" + File.separator;
    //platform
    public static final String SDKS = PLATFORM + "sdks" + File.separator;
    public static final String SDKS_CONFIGS = PLATFORM + "configs" + File.separator;
    public static final String SDKS_PLUGIN = PLATFORM + "plugin" + File.separator;
    public static final String SDKS_ICONS = PLATFORM + "icons" + File.separator;
    //icons
    public static final String SDKS_ICONS_DEFAULT = PLATFORM + "icons" + File.separator + "Default" + File.separator;
    public static final String SDKS_ICONS_DUDAI = PLATFORM + "icons" + File.separator + "Dudai" + File.separator;
    public static final String SDKS_ICONS_LIANYUN = PLATFORM + "icons" + File.separator + "Lianyun" + File.separator;
    //plugin
    public static final String SDKS_PLUGIN_SMALI = SDKS_PLUGIN + "smali" + File.separator;
    public static final String SDKS_PLUGIN_MAJIA = SDKS_PLUGIN + "fanxun" + File.separator;
    //toolbox
    public static final String TOOLBOX_KEYSTORE = TOOLBOX + "keystore" + File.separator;
    public static final String TOOLBOX_TOOLJAR = TOOLBOX + "tooljar" + File.separator;
    public static final String TOOLBOX_TOOLKIT = TOOLBOX + "toolkit" + File.separator;
    public static final String TOOLBOX_LOCAL_CONFIG = TOOLBOX + "local.cfg";


    public static String getApkOutputPath() {
        return OUTPUT + getFormatDate() + File.separator;
    }

    public static String getApkTempPath(ApkParser apkParser) {
        return APK_TEMP + apkParser.gameId + File.separator + apkParser.operator + File.separator + apkParser.currentSdkName + "_temp";
    }

    public static String getApkCommonTempPath(ApkParser apkParser) {
        return APK_TEMP + apkParser.gameId + File.separator + apkParser.operator + File.separator + "common_temp";
    }

    public static String getPlugsTempPath(ApkParser apkParser) {
        return PLUGS_TEMP + apkParser.gameId + File.separator + apkParser.operator + File.separator + apkParser.currentSdkName + File.separator + "plugs.txt";
    }


    public static String getSplahPathByTemp(ApkParser apkCfg) {
        return Common.getApkTempPath(apkCfg) + File.separator + "assets" + File.separator + "maya_splash" + File.separator;
    }

    public static String getDataParent(int sdkIndex) {
        return SDKS + Platforms.getSdkNameByNo(sdkIndex) + File.separator + "use" + File.separator;
    }

    public static String getDatasPathBySDK(int sdkIndex) {
        return getDataParent(sdkIndex) + "data";
    }

    public static String getDatasExtraPathBySDK(int sdkIndex) {
        return getDataParent(sdkIndex) + "data_extra";
    }

    public static String getFixsPathBySDK(int sdkIndex) {
        return getDataParent(sdkIndex) + "fix";
    }

    public static String getBackPressPathBySDK(int sdkIndex) {
        return getDataParent(sdkIndex) + "backPress";
    }

    public static String getPlugsPathBySDK(int sdkIndex) {
        return getDataParent(sdkIndex) + "plugs.txt";
    }

    public static String getPermissionsPathBySDK(int sdkIndex) {
        return getDataParent(sdkIndex) + "permissions.txt";
    }

    public static String getIconBySDK(ApkParser apkParser) {
        if (apkParser.isDudai) {
            return SDKS_ICONS + "Dudai" + File.separator
                    + apkParser.gameName + File.separator
                    + apkParser.gameId + File.separator
                    + apkParser.currentSdkName + File.separator
                    + "icon.png";
        } else {
            return SDKS_ICONS + "Lianyun" + File.separator
                    + apkParser.gameId + File.separator
                    + apkParser.currentSdkName + File.separator
                    + "icon.png";
        }
    }

    public static String getSdkConfigsPath(ApkParser apkParser) {

        if (apkParser.isDudai) {
            return SDKS_CONFIGS + "Dudai" + File.separator
                    + apkParser.gameName + File.separator
                    + apkParser.gameId + File.separator
                    + apkParser.currentSdkName + ".cfg";
        } else {
            return SDKS_CONFIGS + "Lianyun" + File.separator
                    + apkParser.gameId + File.separator
                    + apkParser.currentSdkName + ".cfg";
        }

    }

    public static String getSdkConfigsParent(ApkParser apkParser) {
        if (apkParser.isDudai) {
            return SDKS_CONFIGS + "Dudai" + File.separator
                    + apkParser.gameName + File.separator
                    + apkParser.gameId + File.separator
                    ;
        } else {
            return SDKS_CONFIGS + "Lianyun" + File.separator
                    + apkParser.gameId + File.separator
                    ;
        }

    }


    public static String getToolkitPath() {
        return ROOT + "toolbox" + File.separator + "toolkit" + File.separator;
    }

    /**
     * 清理Temp目录
     *
     * @param apkParser
     */
    public static void cleanApkCache(ApkParser apkParser) {
        FileUtil.delDir(new File(getApkTempPath(apkParser)));
        FileUtil.delDir(new File(getPlugsTempPath(apkParser)));
        LogUtil.showLog(new Date() + "清除temp/apk:" + getApkTempPath(apkParser));
        LogUtil.showLog(new Date() + "清除temp/plugs:" + getPlugsTempPath(apkParser));
    }

    public static void cleanApkCommonDecodeCache(ApkParser apkParser) {
        if (apkParser.isDeleteDecodeFile) {
            FileUtil.delDir(new File(getApkCommonTempPath(apkParser)));
            LogUtil.showLog(new Date() + "清除temp/apk:" + getApkCommonTempPath(apkParser));
        }
    }


}