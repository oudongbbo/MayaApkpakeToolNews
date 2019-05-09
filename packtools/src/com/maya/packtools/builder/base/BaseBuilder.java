package com.maya.packtools.builder.base;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.maya.base.apktools.complier.ApkBuild;
import com.maya.base.apktools.complier.ApkDecode;
import com.maya.base.apktools.complier.ApkSign;
import com.maya.base.apktools.tool.ReApkIcon;
import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.base.utils.LogUtil.LogLevel;
import com.maya.base.utils.RarUtil;
import com.maya.packtools.builder.Platforms;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.config.Common;
import com.maya.packtools.model.XmlParser;

public class BaseBuilder {

    public static int SDK = Platforms.SDK_MAYA;
    public static String SDK_TOP_VERSION = "2.0.0";// 每次升级的时候都需要修改

    public static final String GUANFANG_SDK_TAG = "maya";
    public static final String MAJIA_SDK_TAG = "fanxun";
    protected ApkParser apkParser;

    protected Properties sdkConfig;// 当前渠道的参数

    protected static String pname;
    protected static String pname_old;
    protected static String gameMainActivity;
    protected static String sdkCompany = GUANFANG_SDK_TAG;//马甲就是：fanxun
    protected String ManifestPath;//
    protected String signedApkPath;// 签名后的文件路径
    protected String unSignedApkPath;// 未签名前的文件路径

    protected Map<String, String> gamelibs = new HashMap<String, String>(); // 用于保存游戏libs信息

    private XmlParser xmlParser;

    private String originalSdkVersion;// 当前的sdkversion，如3.0.0之前的都要修改MsdkCore下面的文件getAppConfig的返回值

    // 各种工具
    private static ApkDecode apkDecoder;
    private static ApkBuild apkBuilder;
    private static ApkSign apkSigner;

    private static String ApkToolPath = Common.TOOLBOX_TOOLKIT + "apktool.jar";
    private static String WinRarPath = "C:\\WinRAR\\WinRAR.exe";
    // 签名信息
    private static String KEYSTORE_ROOT_PATH = Common.TOOLBOX_KEYSTORE;
    private static String KEYSTORE_NAME = "mayauc.keystore";
    private static String KEYSTORE_PASS = "www.mayauc.com@888";
    private static String KEYSTORE_ALIAS = "maya";
    private static String KEYSTORE_ALIAS_PASS = "android@maya.com";

    public BaseBuilder(ApkParser apkParser) {

        this.apkParser = apkParser;

        SDK = apkParser.currentSdkNo;

        xmlParser = new XmlParser();

        ManifestPath = Common.getApkTempPath(apkParser) + File.separator + "AndroidManifest.xml";
        unSignedApkPath = Common.getApkTempPath(apkParser) + File.separator + "dist" + File.separator
                + apkParser.apkName;
    }

    /**
     * @mothed xbuild()
     * @descreption 执行处理apk包入口方法
     */
    public void xbuild() {

        try {
            LogUtil.showLog("环境配置", LogLevel.LEVEL_1);
            prepareSettings();

            LogUtil.showLog("打包准备", LogLevel.LEVEL_1);
            prepare();
            LogUtil.showLog("打包准备：完毕", LogLevel.LEVEL_1);

            LogUtil.showLog("反编译：开始", LogLevel.LEVEL_1);
            decode();
            LogUtil.showLog("反编译：完毕", LogLevel.LEVEL_1);

            LogUtil.showLog("复制前数据处理：开始", LogLevel.LEVEL_1);
            beforeCopy();
            LogUtil.showLog("复制前数据处理：完成", LogLevel.LEVEL_1);

            LogUtil.showLog("复制打包文件：开始", LogLevel.LEVEL_1);
            copyDatas();
            LogUtil.showLog("复制打包文件：完成", LogLevel.LEVEL_1);

            LogUtil.showLog("复制后数据处理：开始", LogLevel.LEVEL_1);
            afterCopy();
            LogUtil.showLog("复制后数据处理：完成", LogLevel.LEVEL_1);

            handleMajiaSDK();
            LogUtil.showLog("处理马甲SDK", LogLevel.LEVEL_1);

            LogUtil.showLog("回编译：开始", LogLevel.LEVEL_1);
            build();
            LogUtil.showLog("回编译：完成", LogLevel.LEVEL_1);

            LogUtil.showLog("签名前准备：开始", LogLevel.LEVEL_1);
            beforeSign();
            LogUtil.showLog("签名前准备：完成", LogLevel.LEVEL_1);

            LogUtil.showLog("签名：准备", LogLevel.LEVEL_1);
            signApk();
            LogUtil.showLog("签名：完成", LogLevel.LEVEL_1);

            LogUtil.showLog("移动：开始", LogLevel.LEVEL_1);
            moveApk();
            LogUtil.showLog("移动：完成", LogLevel.LEVEL_1);

            LogUtil.showLog("清理：准备", LogLevel.LEVEL_1);
            cleanApk();
            LogUtil.showLog("清理：完成", LogLevel.LEVEL_1);

        } catch (Exception e) {
            e.printStackTrace();
            LogUtil.showLog("！！！出异常了，怎么搞滴！蹲墙角反省去！人品太差了！", LogLevel.LEVEL_1);
        }

    }

    private void handleMajiaSDK() {

        String apkTempRootPath = Common.getApkTempPath(apkParser);

        if ("fanxun".equals(sdkCompany)) {

            //如果是马甲SDK要对所有的资源进行特殊处理
            //--------------------------------1.处理assets--------------------------------
            String assetsRootPath = apkTempRootPath + File.separator + "assets";

            //--1.1-配置文件
            String splashPath = assetsRootPath + File.separator + "maya_splash";
            String GamePath = assetsRootPath + File.separator + "mayaGame.ini";
            String MsdkPath = assetsRootPath + File.separator + "mayaMsdk.ini";
            String newGamePath = assetsRootPath + File.separator + "fanxunGame.ini";
            String newMsdkPath = assetsRootPath + File.separator + "fanxunMsdk.ini";

            //--1.2-处理行为
            FileUtil.delDir(new File(splashPath));
            FileUtil.renameFile(GamePath, newGamePath);
            FileUtil.renameFile(MsdkPath, newMsdkPath);

            //--1.3-处理fanxunMsdk.ini的参数，只有自营SDK的时候才处理
            if (SDK == Platforms.SDK_MAYA) {
                try {
                    File newMsdkFile = new File(newMsdkPath);
                    if (!newMsdkFile.exists()) {
                        newMsdkFile.createNewFile();
                    }
                    if (newMsdkFile.exists()) {
                        //读取文件
                        Properties properties = new Properties();
                        BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(newMsdkPath)));
                        properties.load(reader);
                        //设置参数
                        properties.setProperty("sdk", String.valueOf(SDK));
                        properties.setProperty("showSplash", "0");//无闪屏
                        properties.setProperty("showExit", "0");//无退出框
                        //重新保存
                        FileOutputStream sdkfos = new FileOutputStream(newMsdkPath);
                        properties.store(sdkfos, new Date().toGMTString());
                        sdkfos.close();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            //--1.4-记得后续代码处理的时候要记得替换相关代码

            //--------------------------------2.处理res--------------------------------
            String resRootPath = apkTempRootPath + File.separator + "res";

            //--2.1-处理文件名，全部重名
            FileUtil.replaceDirAndFileName(new File(resRootPath), "maya_", "fanxun_");
            //--2.2-处理文件内容，全部替换
            FileUtil.replaceFileContentUnderDir(new File(resRootPath), "maya_", "fanxun_");
            //--2.3-替换马甲的资源
            FileUtil.copyDirectiory(Common.SDKS_PLUGIN_MAJIA, apkTempRootPath);


            //--------------------------------3.处理smalli-------------- ------------------
            String smaliRootPath = apkTempRootPath + File.separator + "smali";
            //--3.1-处理文件夹名,maya  fanxun
            String smaliMayaPath = smaliRootPath + File.separator + "com" + File.separator + "maya";
            String smaliMajiaPath = smaliRootPath + File.separator + "com" + File.separator + "fanxun";
            FileUtil.renameFile(smaliMayaPath, smaliMajiaPath);
//            FileUtil.replaceDirAndFileName(new File(smaliRootPath), "maya", "fanxun");

            //--3.2-替换文件名 FmMsdk FmMsdkCallback  FmPlatform
            FileUtil.replaceDirAndFileName(new File(smaliRootPath), "MayaMsdk", "FxMsdk");
            FileUtil.replaceDirAndFileName(new File(smaliRootPath), "MyMsdkCallback", "FxMsdkCallback");
            FileUtil.replaceDirAndFileName(new File(smaliRootPath), "FmPlatform", "FxPlatform");

            //--3.3-替换代码中内容
            //--包名：com/maya/sdk    com/fanxun/sdk
            //--包名：com/maya/open    com/fanxun/open
            //--接口：FmMsdk FxMsdk
            //--接口：FmMsdkCallback FxMsdkCallback
            //--接口：FmPlatform FxPlatform
            //--资源ID：maya_ fanxun_
            //--域名：mayauc.com           fdfanxun.com
            //加密字段：maya.com           fanxun.com
            //参数配置：mayaGame.ini   fanxunGame.ini
            //参数配置：mayaMsdk.ini   fanxunMsdk.ini
            //闪屏：maya_splash   fanxun_splash
            HashMap<String, String> contents = new HashMap<>();
            contents.put("com/maya/sdk", "com/fanxun/sdk");
            contents.put("com/maya/open", "com/fanxun/open");
            contents.put("FmMsdk", "FxMsdk");
            contents.put("MyMsdkCallback", "FxMsdkCallback");
            contents.put("FmPlatform", "FxPlatform");
            contents.put("maya_", "fanxun_");
            contents.put("mayaGame.ini", "fanxunGame.ini");
            contents.put("mayaMsdk.ini", "fanxunMsdk.ini");
            contents.put("maya_splash", "fanxun_splash");
            contents.put("com.maya.system", "com.fanxun.system");
            FileUtil.replaceFileContentUnderDir(new File(smaliRootPath), contents);

            //--3.4-特殊处理，只在我方代码中替换，防止研发有用到，比如定制游戏，用我方主域名的
            HashMap<String, String> contents2 = new HashMap<>();
            contents2.put("mayauc.com", "fdfanxun.com");
            contents2.put("mayauc.com", "fanxun.com");
            FileUtil.replaceFileContentUnderDir(new File(smaliMajiaPath), contents2);

            //--

            //--------------------------------4.处理AndroidManifest.xml--------------------------------
            String ManifestPath = apkTempRootPath + File.separator + "AndroidManifest.xml";

            //--修改组件的引用：com.maya.sdk    com.fanxun.sdk
            FileUtil.replaceFileContent(new File(ManifestPath), "com.maya.sdk", "com.fanxun.sdk");
            //--修改资源的引用：maya_
            FileUtil.replaceFileContent(new File(ManifestPath), "maya_", "fanxun_");
        }


    }

    public static void prepareSettings() {

        apkBuilder = new ApkBuild(ApkToolPath);
        apkDecoder = new ApkDecode(ApkToolPath);
        apkSigner = new ApkSign();
        apkSigner.setRarPathAtWindows(WinRarPath);
        apkSigner.setSignParams(KEYSTORE_ROOT_PATH, KEYSTORE_NAME, KEYSTORE_PASS, KEYSTORE_ALIAS, KEYSTORE_ALIAS_PASS);

    }

    private void moveApk() {

        if (signedApkPath != null & !"".equals(signedApkPath)) {

            File signApk = new File(signedApkPath);
            if (signApk.exists()) {

                String apk_output_path;
                if (apkParser.apkOutputParentPath != null && !"".equals(apkParser.apkOutputParentPath)) {
                    // 如果有指定输出目录，则输出目录
                    apk_output_path = apkParser.apkOutputParentPath;
                } else {
                    // 没有指定输出目录
                    apk_output_path = Common.getApkOutputPath() + File.separator + apkParser.apkPreName;
                }
                sendLog("打完包，输出到：" + apk_output_path);

                File apk_file = new File(apk_output_path);
                if (!apk_file.exists()) {
                    apk_file.mkdirs();
                    LogUtil.showLog("输出目录不存在，正在创建...");
                } else {

                }
                LogUtil.showLog("打包完成后的存放文件夹:" + apk_file.getAbsolutePath());
                LogUtil.showLog("转移：打包的包");

                String finalApkPath = apk_output_path + File.separator + apkParser.currentSdkName + "_"
                        + apkParser.apkName;

                LogUtil.showLog("最终的输出目录文件:" + finalApkPath);

                File finalFile = new File(finalApkPath);
                if (!finalFile.exists()) {
                    try {
                        finalFile.createNewFile();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                LogUtil.showLog("签名后的文件，移动前的源文件:" + signedApkPath);

                RarUtil.copyFile(signedApkPath, finalApkPath);
                LogUtil.showLog("转移：完成");

                signApk.delete();

            }
        }
    }

    /**
     * 处理包前的预处理，包括横竖屏处理和参数配置以及缓冲的清理
     *
     * @throws Exception
     */
    private void prepare() throws Exception {

        String config = Common.getSdkConfigsPath(apkParser);

        LogUtil.showLog(new Date() + "准备当前渠道参数是[" + SDK + "]:" + config);

        sdkConfig = new Properties();
        FileInputStream fis = new FileInputStream(config);
        BufferedReader bf = new BufferedReader(new InputStreamReader(fis));
        sdkConfig.load(bf);

        for (Enumeration<?> e = sdkConfig.propertyNames(); e.hasMoreElements(); ) {

            String key = (String) e.nextElement();

            if (key.equals("mainActivity")) {
                // 应用宝专用配置项
                gameMainActivity = sdkConfig.getProperty(key);
                LogUtil.showLog("-->读取到gameMainActivity配置项，值为：" + gameMainActivity);

            } else if (key.equals("sdkCompany")) {

                sdkCompany = sdkConfig.getProperty(key);

            } else if (key.equals("replaceR")) {
                // 是否覆盖R文件
                apkParser.isReplaceRFiles = (key != null && !"".equals(key) && "1".equals(key)) ? true : false;
            } else {

                LogUtil.showLog(key + " -> " + sdkConfig.getProperty(key));

                // if(OneKeyBuild.channlName.equals("dcn")){
                // if(key.equals("merchantId")){
                // OneKeyBuild.dcnTag = sdkConfig.getProperty(key);
                // }
                // }
            }
        }

        pname = sdkConfig.getProperty("pname");
        pname_old = BaseUtils.getGamePackageName(apkParser.apkPath);

        if (pname == null || "".equals(pname)) {
            pname = pname_old;
            LogUtil.showLog("获取到配置文件包名为空，则用旧包名:" + pname);
        } else {
            LogUtil.showLog("获取到配置文件包名:" + pname);
        }

        // clean cache
        Common.cleanApkCache(apkParser);

        LogUtil.showLog("清理缓存完成", LogLevel.LEVEL_1);
    }

    /**
     * 有一些文件，复制过去之后，是无法被apktool回编译的，需要手动添加
     */
    private void beforeSign() {

        handleUnknownFiles();
        LogUtil.showLog("复制unknownFiles完成", LogLevel.LEVEL_1);

        deleteUnNeedFile();
        LogUtil.showLog("删除不需要的文件完成", LogLevel.LEVEL_1);

        ReApkIcon.changeNewIcon(unSignedApkPath, Common.getIconBySDK(apkParser));

        LogUtil.showLog("处理icon文件", LogLevel.LEVEL_1);
    }

    private void handleUnknownFiles() {
        // 复制渠道data下面的unknown的文件到apk中。

        File resourceApk = new File(unSignedApkPath);

        if (resourceApk.exists()) {
            // 存在，才复制
            String unknownFilesPath = Common.getDatasPathBySDK(SDK) + File.separator + "unknown";
            File unknownfile = new File(unknownFilesPath);
            if (unknownfile.exists()) {
                File unknownfiles[] = unknownfile.listFiles();
                if (unknownfiles.length > 0) {
                    for (File file : unknownfiles) {
                        LogUtil.showLog("--->复制unknownFiles文件" + file.getAbsolutePath());
                        RarUtil.addNewFile2Rar(unSignedApkPath, file.getAbsolutePath());
                    }
                }
            }
        } else {
            LogUtil.showLog("当前渠道不存在unknownFiles文件");
        }

    }

    private void deleteUnNeedFile() {

//        if (SDK == Platforms.SDK_MAYA && GUANFANG_SDK_TAG.equals(sdkCompany)) {
//
//            LogUtil.showLog("如果是母包，则删除mayaMsdk.ini文件");
//
//            String resourceApkPath = Common.getApkTempPath(apkParser) + System.getProperty("file.separator") + "dist"
//                    + System.getProperty("file.separator") + apkParser.apkName;
//
//            String delcmd;
//
//            if (SystemUtil.isWindowsOS()) {
//                delcmd = WinRarPath + " -ibck -inul d " + resourceApkPath + "  " + "assets" + File.separator
//                        + "mayaMsdk.ini";
//            } else {
//                delcmd = " zip  -d " + resourceApkPath + " assets" + File.separator + "mayaMsdk.ini ";
//            }
//
//            LogUtil.showLog("删除命令是=" + delcmd);
//
//            try {
//                Process proc = Runtime.getRuntime().exec(delcmd);
//
//                StreamController.printStream(proc);// 消息太多，先屏蔽了
//
//                if (proc.waitFor() != 0) {
//                    if (proc.exitValue() == 0)
//                        LogUtil.showLog("mayaMsdk.ini 删除失败");
//                } else {
//                    LogUtil.showLog("mayaMsdk.ini 删除成功");
//                }
//
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
    }

    /**
     * 处理屏幕横竖屏显示 不需要处理，以后全部处理AndroidManifest.xml中的代码即可
     */
    protected void handleScreenOrientation(String sdkplugin, int isLandScape) {

        // // isLandScape:1-横屏，0-竖屏
        // String temp = FileUtil.read(sdkplugin);
        // if (isLandScape == 0) {
        // temp = temp.replaceAll("landscape", "portrait");
        // LogUtil.showLog(new Date() + "游戏是竖屏，改为portrait");
        // } else {
        // temp = temp.replaceAll("portrait", "landscape");
        // LogUtil.showLog(new Date() + "游戏是横屏，改为landscape");
        // }
        // FileUtil.write(sdkplugin, temp);
    }

    protected void handleSdkPluginsOrientation(String sdkplugin, Properties prop) {

        String ori = prop.getProperty("isLandScape").trim();

        String content = FileUtil.read(sdkplugin);
        // 替换横竖屏没
        if ("0".equals(ori)) {
            // 竖屏
            content = content.replaceAll("android:screenOrientation=\"behind\"",
                    "android:screenOrientation=\"portrait\"");
        } else {
            // 默认横屏
            content = content.replaceAll("android:screenOrientation=\"behind\"",
                    "android:screenOrientation=\"landscape\"");
        }

        FileUtil.write(sdkplugin, content);

    }

    /**
     * 预处理data中sdkplugin中的参数配置
     */
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {
        // 默认不对data下面的plugs内容做处理，若有需要替换参数d情况，由子类复写逻辑

    }

    // ----------------------------------------------------------------------------------------------------//
    // --------------------------------------------华丽分割线-----------------------------------------------//
    // ----------------------------------------------------------------------------------------------------//

    /**
     * 反编译处理
     */
    private void decode() {

        File file = new File(Common.getApkCommonTempPath(apkParser));

        if (file.exists() && file.listFiles().length > 3) {
            // 如果存在，且 存在三个以上文件 \res\smali\manifest\apktool.yml
            FileUtil.copyDirectiory(Common.getApkCommonTempPath(apkParser), Common.getApkTempPath(apkParser));
        } else {
            // 如果不存在，说明是第一次反编译
            file.mkdirs();
            boolean isSuccess = apkDecoder.decode(apkParser.apkPath, Common.getApkCommonTempPath(apkParser));
            if (isSuccess) {
                FileUtil.copyDirectiory(Common.getApkCommonTempPath(apkParser), Common.getApkTempPath(apkParser));
            }
        }
    }

    /**
     * 复制data到temp前的处理
     */
    // @Override
    private void beforeCopy() {

        handleGameConfig(); // 重写mayaGame.ini

        handleDeleteUnionSmali();

        handleLibsBeforeCopy();

        // 20150309记录游戏的lib目录下的适配情况
        File armeabi = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "armeabi");
        File armeabi_v7a = new File(
                Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "armeabi-v7a");
        File arm64_v8a = new File(
                Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "arm64-v8a");
        File x86 = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "x86");
        File x86_64 = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "x86_64");
        File mips = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "mips");
        File mips64 = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "mips64");

        if (armeabi.exists()) {
            gamelibs.put("armeabi", "exists");
        }
        if (armeabi_v7a.exists()) {
            gamelibs.put("armeabi-v7a", "exists");
        }
        if (arm64_v8a.exists()) {
            gamelibs.put("arm64-v8a", "exists");
        }
        if (x86.exists()) {
            gamelibs.put("x86", "exists");
        }
        if (x86_64.exists()) {
            gamelibs.put("x86_64", "exists");
        }
        if (mips.exists()) {
            gamelibs.put("mips", "exists");
        }
        if (mips64.exists()) {
            gamelibs.put("mips64", "exists");
        }

    }

    /**
     * 删除银联支付的代码，因为会冲突
     */
    private void handleDeleteUnionSmali() {

        if (SDK == Platforms.SDK_MAYA) {
            // SJoy渠道不处理
        } else {
            // 删除so库先
            File a = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "arm64-v8a"
                    + File.separator + "libentryexpro.so");
            File b = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "arm64-v8a"
                    + File.separator + "libuptsmaddon.so");

            File c = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "armeabi"
                    + File.separator + "libentryexpro.so");
            File d = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "armeabi"
                    + File.separator + "libuptsmaddon.so");

            File e = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "armeabi-v7a"
                    + File.separator + "libentryexpro.so");
            File f = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "armeabi-v7a"
                    + File.separator + "libuptsmaddon.so");

            File g = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "x86"
                    + File.separator + "libentryexpro.so");
            File h = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "x86"
                    + File.separator + "libuptsmaddon.so");

            File i = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "x86_64"
                    + File.separator + "libentryexpro.so");
            File j = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "x86_64"
                    + File.separator + "libuptsmaddon.so");

            File k = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "mips"
                    + File.separator + "libentryexpro.so");
            // 删除代码先
            File x = new File(Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + "cn"
                    + File.separator + "gov" + File.separator + "pbc");
            File y = new File(Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + "com"
                    + File.separator + "unionpay");
            File z = new File(Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + "com"
                    + File.separator + "UCMobile");

            if (a.exists())
                FileUtil.delDir(a);
            if (b.exists())
                FileUtil.delDir(b);
            if (c.exists())
                FileUtil.delDir(c);
            if (d.exists())
                FileUtil.delDir(d);
            if (e.exists())
                FileUtil.delDir(e);
            if (f.exists())
                FileUtil.delDir(f);
            if (g.exists())
                FileUtil.delDir(g);
            if (h.exists())
                FileUtil.delDir(h);
            if (i.exists())
                FileUtil.delDir(i);
            if (j.exists())
                FileUtil.delDir(j);
            if (k.exists())
                FileUtil.delDir(k);

            if (x.exists())
                FileUtil.delDir(x);
            if (y.exists())
                FileUtil.delDir(y);
            if (z.exists())
                FileUtil.delDir(z);

            FileUtil.delPayFiles(Common.getApkTempPath(apkParser));
        }

    }

    /**
     * 处理复制前的游戏libs-通常是为了删除SDK多余的支付相关文件
     */
    protected void handleLibsBeforeCopy() {

        // 默认不处理libs，子类若有需要则需重写此方法

    }

    /**
     * 删除data下面的mayaGame.ini文件 重新apktemp下的mayaGame.ini文件
     */
    private void handleGameConfig() {

        // 1.删除data下面的mayaGame.ini文件
        File dataFile = new File(Common.getDatasPathBySDK(SDK) + System.getProperty("file.separator") + "assets"
                + System.getProperty("file.separator") + "mayaGame.ini");

        if (dataFile.exists()) {
            FileUtil.delDir(dataFile);
            LogUtil.showLog("删除data里的mayaGame.ini：" + dataFile.toString());
        }

        // 2.反编译后temp下面的mayaGame.ini文件
        String tempPath = Common.getApkTempPath(apkParser) + System.getProperty("file.separator") + "assets"
                + System.getProperty("file.separator") + "mayaGame.ini";
        try {
            Properties newProperty = new Properties();
            FileInputStream fis = new FileInputStream(tempPath);
            BufferedReader bf = new BufferedReader(new InputStreamReader(fis));

            newProperty.load(bf);
            // 处理pid
            if (!Platforms.SDK_NAME_MAYA.equals(apkParser.currentSdkName)) {
                // 只有非自营渠道需要修改pid，自营渠道，默认是什么就是什么，比如100或者185
                newProperty.setProperty("pid", String.valueOf(SDK));
            }


            // 处理mid
            String mid = newProperty.getProperty("mid");
        
            // 切换账号,强制关闭
            newProperty.setProperty("sdk_float_switch", "0");
            // #是否开启debug模式，1：开启
            newProperty.setProperty("debug", "0");
            // 处理sdkversion
            String ver = newProperty.getProperty("sdkversion");
            if (ver != null && !"".equals(ver)) {
                if (!ver.equals(SDK_TOP_VERSION)) {
                    // 原有版本和目前最新版本不等
                    newProperty.setProperty("sdkver_old", ver);
                }

            }
            newProperty.setProperty("sdkversion", SDK_TOP_VERSION);
            // 记录apk的接入SDK版本
            String oldVer = newProperty.getProperty("sdkver_old");
            originalSdkVersion = oldVer;
            LogUtil.showLog("apk中获取到的CP接入SDK版本是：" + originalSdkVersion);
            // 重新保存
            FileOutputStream sdkfos = new FileOutputStream(tempPath);
            newProperty.store(sdkfos, new Date().toGMTString());
            sdkfos.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * 处理apktemp下的mayaMsdk.ini文件 由第三方渠道集成，按需修改
     */
    public void handleMsdkConfig() {

        LogUtil.showLog("处理apktemp下的mayaMsdk.ini文件", LogLevel.LEVEL_1);

        String tempPath = Common.getApkTempPath(apkParser) + System.getProperty("file.separator") + "assets"
                + System.getProperty("file.separator") + "mayaMsdk.ini";
        File tempFile = new File(tempPath);
        if (tempFile.exists()) {
            try {
                Properties appPro = new Properties();
                FileInputStream fis = new FileInputStream(tempPath);
                BufferedReader bf = new BufferedReader(new InputStreamReader(fis));
                appPro.load(bf);
                // 设置横竖屏和是否定额
                appPro.setProperty("gameLand", sdkConfig.getProperty("isLandScape"));
                appPro.setProperty("gameFinal", sdkConfig.getProperty("isFinal"));
                // 移除debug模式
            	appPro.remove("sdk_id");
                // 设置不同渠道的参数
                handlePlatformComConfig(appPro, sdkConfig);
                // 重新保存
                FileOutputStream sdkfos = new FileOutputStream(tempPath);
                appPro.store(sdkfos, new Date().toGMTString());
                sdkfos.close();

            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {

        }

    }

    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

    }
    // ----------------------------------------------------------------------------------------------------//
    // --------------------------------------------华丽分割线-----------------------------------------------//
    // ----------------------------------------------------------------------------------------------------//

    /**
     * 复制Platform下面的data到temp中
     */
    private void copyDatas() {
        // 复制data
        FileUtil.copyDirectiory(Common.getDatasPathBySDK(SDK), Common.getApkTempPath(apkParser));
        // 复制额外的第三方data资源
        copyDataExtra();
        // 复制特殊游戏的特殊文件
        copySpecialDatas();

    }

    // 需要不同的渠道去覆写
    public void copyDataExtra() {
    }

    private void copySpecialDatas() {

        // String specialPath = new
        // File(Common.getSdkConfigsPath(SDK)).getParentFile().getAbsolutePath()+File.separator;
        // String specialSdkPath = null;
        // //根据独代或渠道设置special文件夹路径 ------lph20160510
        // if(apkParser.isDudai){
        // specialPath += "special";
        // specialSdkPath = specialPath
        // +File.separator+SDKConfig.getSdkNameByNo(SDK);
        // } else {
        // specialPath += (apkParser.gameId + File.separator + "special");
        // specialSdkPath = specialPath;
        // }
        //
        // File specialSdkFile = new File(specialSdkPath);
        // if (specialSdkFile.exists() && specialSdkFile.isDirectory()) {
        // //文件夹存在
        // LogUtil.showLog("复制游戏的特殊文件="+specialSdkPath);
        // FileUtil.copyDirectiory(specialSdkPath,
        // Common.getApkTempPath(apkParser), false);
        // }
    }

    // ----------------------------------LPH.20160718--------------------------------------

    // 处理入口
    public void handleResValue() {

        LogUtil.showLog("处理res资源", LogLevel.LEVEL_1);

        // 针对color、dimen、string及style进行处理
        String[] gameResName = {"colors.xml", "dimens.xml", "strings.xml", "styles.xml"};
        // 罗列
        String TempResPath = Common.getApkTempPath(apkParser) + File.separator + "res" + File.separator;
        String DataResPath = Common.getDatasPathBySDK(SDK) + File.separator + "res" + File.separator;
        File TempResFile = new File(TempResPath);
        File DataResFile = new File(DataResPath);
        // 必须得都存在才继续
        if (TempResFile.exists() && DataResFile.exists()) {

            File[] resFiles = TempResFile.listFiles();
            if (resFiles.length > 0) {
                // 如果文件夹大于0
                for (File resFile : resFiles) {

                    if (resFile.isDirectory() && resFile.getName().startsWith("values")) {

                        String TempValuePath = Common.getApkTempPath(apkParser) + File.separator + "res"
                                + File.separator + resFile.getName();
                        String DataValuePath = Common.getDatasPathBySDK(SDK) + File.separator + "res" + File.separator
                                + resFile.getName();

                        System.out.println("当前检查的目录是:" + resFile.getName());

                        // 获取所有第三方的value参数列表
                        ArrayList<HashMap<String, String>> newProperties = new ArrayList<>();
                        File dataValueFiles = new File(DataValuePath);
                        if (dataValueFiles.exists()) {
                            File[] valueFiles = dataValueFiles.listFiles();
                            if (valueFiles != null) {
                                for (File valueFile : valueFiles) {
                                    newProperties
                                            .addAll(xmlParser.getXmlItemValues(valueFile.getAbsolutePath(), "name"));
                                }
                            }
                        }
                        // 处理游戏中的资源文件
                        for (String gameRes : gameResName) {
                            String path = TempValuePath + File.separator + gameRes;
                            if (new File(path).exists()) {
                                xmlParser.handleResXML(path, newProperties);
                            }
                        }
                    }
                }
            }
        }

    }

    // ----------------------------------------------------------------------------------------------------//
    // --------------------------------------------华丽分割线-----------------------------------------------//
    // ----------------------------------------------------------------------------------------------------//

    private void afterCopy() {
        // 重写mayaMsdk.ini
        handleMsdkConfig();

        // 处理冲突资源
        handleResValue();

        // 处理sdk/plugs
        handleSdkPlugs();

        // 下面是对AndroidManifest.xml的常规处理，如改包名，加入第三方权限和组件等。
        handleAndroidManifestXmlFile();

        // 当第三方要特殊处理AndroidManifest.xml的,请重写handleAndroidManifestBySDK()进行处理。
        // 处理libs问题
        handleLibsAfterCopy();

        // 处理游戏和第三方渠道的so库问题
        handleSoFilesBetweenGameAndData();

        //是否复制旧包的R文件
        LogUtil.showLog("复制旧包名路径下的内容到新包名下", LogLevel.LEVEL_1);

        if (apkParser.isReplaceRFiles) {
            LogUtil.showLog("复制旧包名路径下的内容到新包名下");
            copyFileAndReplacePackageName(SDK, pname_old, pname);
        }

        //修改R文件看这里！看这里！看这里！看这里！看这里！看这里！
        LogUtil.showLog("修改R文件", LogLevel.LEVEL_1);
        handleTempRFiles();

        // 根据不同的sdk版本复制不同的参数
        // new SJoysBuilder().handleDifferentSDKPlugin(apkParser, SDK_VERSION,
        // ManifestPath);

        // 腾讯
        handleActivitySmaliWithOnNewIntent();

        LogUtil.showLog("修改smali", LogLevel.LEVEL_1);
        // 处理代码
        handleSmali(SDK);

        handleOtherPayByRemove();
        // 处理编译版本
		LogUtil.showLog("修改Apk各种版本的Version", LogLevel.LEVEL_1);
        handleApkVersion();

    }

    /**
     * 去除渠道之外的支付代码、资源等
     */
    public void handleOtherPayByRemove() {

    }

    /**
     * 处理游戏的编译版本，改为19
     */
    private void handleApkVersion() {
        // apktool.yml
        String path = Common.getApkTempPath(apkParser) + File.separator + "apktool.yml";


        //高版本的apktool 需要屏蔽的字段有
        // "- assets/"  "- res/drawable"
        //- jpg
        //- png
        //
        String[] keywords = {"- assets/","- res/drawable"};
        String content = FileUtil.readExceptCotent(path,keywords);

        if (content.contains("targetSdkVersion")) {
            // 正则找到targetSdkVersion
            Pattern p = Pattern.compile("targetSdkVersion: '(.*?)'");
            Matcher m = p.matcher(content);
            m.find();
            String version = m.group(1);
            if (Integer.parseInt(version) > 19) {
                // 大于19才不替换
                content = content.replaceAll("targetSdkVersion: '" + version + "'", "targetSdkVersion: '19'");
            }
        } else {
            content = content.replaceAll("sdkInfo:", "sdkInfo:\n  targetSdkVersion: '19'");
        }

        //正则找到minSdkVersion
        if (content.contains("minSdkVersion")) {
            Pattern p = Pattern.compile("minSdkVersion: '(.*?)'");
            Matcher m = p.matcher(content);
            m.find();
            String version = m.group(1);
            if (Integer.parseInt(version) > 19) {
                //大于17才不替换
                content = content.replaceAll("minSdkVersion: '" + version + "'", "minSdkVersion: '17'");
            }
        } else {
            content = content.replaceAll("sdkInfo:", "sdkInfo:\n  minSdkVersion: '17'");
        }


        FileUtil.write(path, content);
    }


    /**
     * 处理第三方渠道的Application组件,先复制到临时目录
     */
    private void handleSdkPlugs() {

        LogUtil.showLog("处理plugs", LogLevel.LEVEL_1);

        // 把DATA中的资源，复制到TEMP目录下
        File plugsFile = new File(Common.getPlugsPathBySDK(SDK));
        File plugsTempFile = new File(Common.getPlugsTempPath(apkParser));
        if (!plugsTempFile.exists()) {
            plugsTempFile.getParentFile().mkdirs();
            try {
                plugsTempFile.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        FileUtil.copyFile(plugsFile, plugsTempFile);
        // 处理临时文件中的
        String sdkplugin = Common.getPlugsTempPath(apkParser);
        LogUtil.showLog("临时处理Plugs的目录:" + sdkplugin);
        // 处理plugs.txt和AndroidManifest.xml中一些重复的组件
        ArrayList<HashMap<String, String>> list = new ArrayList<HashMap<String, String>>();
        list = xmlParser.getXmlItemValues(sdkplugin, "android:name");
        xmlParser.handleAndroidManifest(ManifestPath, list);

        // 处理方向
        handleSdkPluginsOrientation(sdkplugin, sdkConfig);

        // 处理plugs.txt中一些参数问题
        handleSdkPlugins(sdkplugin, sdkConfig);
    }

    /**
     * 处理smali代码，在回编译前处理。
     */
    public void handleSmali(int SDK) {

//        if (SDK == PlatformConfig.SDK_MAYA) {
//            //如果是sjoys平台，要删除afinal的代码
//            String afianlPath = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + "com" + File.separator + "starjoys" + File.separator + "open" + File.separator + "afinal";
//            File afinalFile = new File(afianlPath);
//            if (afinalFile.exists()) {
//                FileUtil.delDir(afinalFile);
//                LogUtil.showLog("删除afinal代码" + afianlPath);
//            }
//        }
//        //删除多余的maya开头的R文件
//        String mayaPath = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator + "com" + File.separator + "maya";
//        File mayaFile = new File(mayaPath);
//        if (mayaFile.exists()) {
//            FileUtil.delDir(mayaFile);
//            LogUtil.showLog("删除afinal代码" + mayaPath);
//        }


        //非自营渠道的，需要复制自营渠道的核心代码
        handleSmaliPlugin();

    }


    /**
     * 1.添加最新的sjoys的核心代码
     * 2.第三方，如果不想引用全，可以只引用部分核心代码
     */
    protected void handleSmaliPlugin() {

        LogUtil.showLog("添加最新的sjoys的核心代码", LogLevel.LEVEL_1);

        if (SDK != Platforms.SDK_MAYA) {
            LogUtil.showLog("复制最新的smali代码");
            FileUtil.copyDirectiory(Common.SDKS_PLUGIN_SMALI, Common.getApkTempPath(apkParser));
        }
    }

    /**
     * 处理onNewIntent相关。主要是为应用宝处理,新增加优酷支付activity到包名下
     */
    protected void handleActivitySmaliWithOnNewIntent() {
        // 默认不做处理，应用宝渠道复写
        LogUtil.showLog("应用宝handleActivitySmaliWithOnNewIntent", LogLevel.LEVEL_1);
    }

    /**
     * 重组AndroidMenifest.xml文件 第三方处理，请重写handleAndroidManifestBySDK();
     */
    private void handleAndroidManifestXmlFile() {

        LogUtil.showLog("重组AndroidMenifest.xml文件", LogLevel.LEVEL_1);

        String manifest = FileUtil.read(ManifestPath);

        /*
         * 包名处理
         */
        LogUtil.showLog("开始处理包名，新包名：" + pname);
        if (pname != null && !"".equals(pname)) { // 有包名替换需求

            Pattern p = Pattern.compile("package=\"(.*?)\"");
            Matcher m = p.matcher(manifest);
            m.find();
            pname_old = m.group(1); // 获取到原包名
            manifest = manifest.replaceFirst(pname_old, pname); // 替换包名

            // 查找"."开头的名称，如".Activity.MainActivity",替换为"package+".Activity.MainActivity""
            manifest = manifest.replaceAll("android:name=\"\\.", "android:name=\"" + pname_old + "\\.");

            /* 包名额外字段替换，例如处理provider */
            Pattern p2 = Pattern.compile("android:authorities=\"(.*?)\"");
            Matcher m2 = p2.matcher(manifest);
            while (m2.find()) {
                String pname2_manifest = m2.group(1);
                manifest = manifest.replaceAll(pname2_manifest, pname2_manifest.replace(pname_old, pname)); //替换包名
            }
        }
        LogUtil.showLog("原包名:" + pname_old + " 现包名：" + pname);

        //处理android:debuggable
        if (manifest.contains("android:debuggable=\"true\"")) {
            manifest = manifest.replaceAll("android:debuggable=\"true\"", "android:debuggable=\"false\"");
        }
        //处理安装路径android:installLocation="auto"
        if (manifest.contains("android:installLocation=\"preferExternal\"")) {
            //默认外，改自动
            manifest = manifest.replaceAll("android:installLocation=\"preferExternal\"", "android:installLocation=\"auto\"");
        } else if (manifest.contains("android:installLocation=\"internalOnly\"")) {
            //默认内，改自动
            manifest = manifest.replaceAll("android:installLocation=\"internalOnly\"", "android:installLocation=\"auto\"");
        } else if (!manifest.contains("android:installLocation")) {
            //没有这个属性，加上自动
            manifest = manifest.replace("<manifest>", "<manifest>  android:installLocation=\"auto\"");
        }


        //处理后新组件
        String plugs = FileUtil.read(Common.getPlugsTempPath(apkParser));
        if (plugs.contains("<application>")) {
            plugs = plugs.replace("<application>", "");
        }
        manifest = manifest.replace("</application>", plugs);
        // 处理权限
        String permissions = FileUtil.read(Common.getPermissionsPathBySDK(SDK));
        if (permissions.contains("<manifest>")) {
            permissions = permissions.replace("<manifest>", "");
        }
        manifest = manifest.replace("</manifest>", permissions);

        FileUtil.write(ManifestPath, handleApplication(manifest));

        handleAndroidManifestBySDK(ManifestPath,sdkConfig);

        handleAndroidManifestByGame(apkParser.gameId, SDK, ManifestPath);

        LogUtil.showLog("重整AndroidManifest完成", LogLevel.LEVEL_1);
    }



    protected  void handleAndroidManifestBySDK(String manifestPath, Properties prope){
        handleAndroidManifestBySDK();
    }

    /**
     * 修复不同SDK关于manifest的特殊需求
     */
    protected void handleAndroidManifestBySDK() {

    }





    /**
     * 修复不同GID关于manifest的特殊需求
     */
    protected void handleAndroidManifestByGame(String gid, int sdk, String contentPath) {

        Build4Manifest.handleAndroidManifest(gid, sdk, contentPath);
    }

    /**
     * 处理AndroidMenifest.xml文件中的application申明
     */
    protected String handleApplication(String manifest) {
        // 默认不处理application申明，渠道有需求则子类复写
        return manifest;
    }

    /**
     * 处理复制后的游戏libs-通常是为了删除游戏以及SDK历史遗留的多余支付相关文件
     */
    protected void handleLibsAfterCopy() {

        // 默认不处理libs，子类若有需要则需重写此方法
        LogUtil.showLog("handleLibsAfterCopy", LogLevel.LEVEL_1);
    }

    /**
     * 复制R文件后的特殊处理，比如腾讯需要复制WXEntryActivity
     */
    protected void handleTempRFiles() {
        LogUtil.showLog("handleTempRFiles", LogLevel.LEVEL_1);
    }

    /**
     * 处理SDK和游戏的.so文件
     */
    protected void handleSoFilesBetweenGameAndData() {

        LogUtil.showLog("处理第三方SO库", LogLevel.LEVEL_1);

        // 此处是为了解决，有的游戏lib只有其中一两个，而sdk却要求支持4中，从而导致有些设备因为无法读取到so而报错。
        File lib1 = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "armeabi");
        File lib2 = new File(
                Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "armeabi-v7a");
        File lib3 = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "mips");
        File lib4 = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "x86");
        File lib5 = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "arm64-v8a");// 20151030新增
        File lib6 = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "mips64");
        File lib7 = new File(Common.getApkTempPath(apkParser) + File.separator + "lib" + File.separator + "x86_64");

        // SDK中的lib
        File sdklib1 = new File(Common.getDatasPathBySDK(SDK) + File.separator + "lib" + File.separator + "armeabi");
        File sdklib2 = new File(
                Common.getDatasPathBySDK(SDK) + File.separator + "lib" + File.separator + "armeabi-v7a");
        File sdklib3 = new File(Common.getDatasPathBySDK(SDK) + File.separator + "lib" + File.separator + "mips");
        File sdklib4 = new File(Common.getDatasPathBySDK(SDK) + File.separator + "lib" + File.separator + "x86");
        File sdklib5 = new File(Common.getDatasPathBySDK(SDK) + File.separator + "lib" + File.separator + "arm64-v8a");// 20151030新增
        File sdklib6 = new File(Common.getDatasPathBySDK(SDK) + File.separator + "lib" + File.separator + "mips64");
        File sdklib7 = new File(Common.getDatasPathBySDK(SDK) + File.separator + "lib" + File.separator + "x86_64");

        if (!sdklib1.exists() && !sdklib2.exists() && !sdklib3.exists() && !sdklib4.exists() && !sdklib5.exists()
                && !sdklib6.exists() && !sdklib7.exists()) {
            // 如果sdk中不存在lib则不处理
        } else if (gamelibs.get("armeabi") == null && gamelibs.get("armeabi-v7a") == null
                && gamelibs.get("mips") == null && gamelibs.get("x86") == null && gamelibs.get("arm64-v8a") == null
                && gamelibs.get("mips64") == null && gamelibs.get("x86_64") == null) {
            // 如果游戏中不存在lib则也不处理
        } else {
            // 游戏和SDK都存在lib时需要保持一致
            // 如果游戏不存在对应libs，就删除SDK中的lib。
            // 对于armeabi，游戏无，SDK有，则删除；游戏有，SDK无，则复制armeabi-v7a（如果也没有，则不管）
            if (gamelibs.get("armeabi") == null && sdklib1.exists()) {
                FileUtil.delDir(lib1);
            } else if (gamelibs.get("armeabi") != null && !sdklib1.exists()) {
                if (sdklib2.exists()) {
                    FileUtil.copyDirectiory(sdklib2.getAbsolutePath(), lib1.getAbsolutePath());
                }
            }
            // 对于armeabi-v7a，游戏无，SDK有，则删除；游戏有，SDK无，则复制armeabi（如果也没有，则不管）
            if (gamelibs.get("armeabi-v7a") == null && sdklib2.exists()) {
                FileUtil.delDir(lib2);
            } else if (gamelibs.get("armeabi-v7a") != null && !sdklib2.exists()) {
                if (sdklib1.exists()) {
                    FileUtil.copyDirectiory(sdklib1.getAbsolutePath(), lib2.getAbsolutePath());
                }
            }
            // 对于mips和x86则不管
            if (gamelibs.get("mips") == null) {
                FileUtil.delDir(lib3);
            }
            if (gamelibs.get("x86") == null) {
                FileUtil.delDir(lib4);
            }
            if (gamelibs.get("arm64-v8a") == null) {
                FileUtil.delDir(lib5);
            }
            if (gamelibs.get("mips64") == null) {
                FileUtil.delDir(lib6);
            }
            if (gamelibs.get("x86_64") == null) {
                FileUtil.delDir(lib7);
            }
        }

    }

    /**
     * 遍历 旧包名 目录下的smali文件，复制到 新包名 目录下 ；并且替换掉原有包名的引用
     *
     * @param oldPname 旧包名
     * @param oldPname 新包名
     */
    public void copyFileAndReplacePackageName(int SDK, String oldPname, String newPname) {

        LogUtil.showLog("copyFileAndReplacePackageName", LogLevel.LEVEL_1);

        // APK反编译后代码文件所在目录
        System.out.print("------------------------开始修改包名相关资源------------------------------\n");

        String ParentPath = Common.getApkTempPath(apkParser) + System.getProperty("file.separator") + "smali"
                + System.getProperty("file.separator");

        // 再代码中包名的"."要更改为"/"
        String fromPath = oldPname.replaceAll("\\.", "\\/");
        String toPath = newPname.replaceAll("\\.", "\\/");
        // 新建新的包名目录，避免因为新包名继承原包名而出现无限新建文件夹的bug
        // 例如, 原包名:com.test.a 新包名:com.test.a.b
        LogUtil.showLog("新建新的包名目录:" + ParentPath + toPath);

        String tempPath = ParentPath + "temp";
        File temp = new File(tempPath);

        if (!temp.exists()) {
            temp.mkdirs();
        }
        LogUtil.showLog("开始复制内容到temp，fromPath:" + ParentPath + fromPath + "\ntoTempPath:" + tempPath);

        File fromFile = new File(ParentPath + fromPath);
        if (!fromFile.exists()) {
            LogUtil.showLog("输入源不存在，");
        } else {

            FileUtil.copyDirectiory(ParentPath + fromPath, tempPath);
            File toFile = new File(ParentPath + toPath);

            if (!toFile.exists()) {
                toFile.mkdirs();
            }

            LogUtil.showLog("开始复制内容，fromPath:" + tempPath + "\ntoPath:" + ParentPath + toPath);

            // 将原包名所在目录的内容复制过去，要注意去掉文件夹，因为我们只需要R文件就可以了
            FileUtil.copyDirectiory(tempPath, ParentPath + toPath);

            // temp的内容复制过去后需要删除掉文件夹
            if (temp.exists()) {
                // LogUtil.showLog("-->删除temp："+tempPath);
                FileUtil.delDir(temp);
            } else {
                LogUtil.showLog("不存在temp，删除失败");

            }
            // 生成的新文件夹中，替换掉原包名内容
            FileUtil.replaceFileContentUnderDir(toFile, fromPath, toPath);

        }

        System.out.print("------------------------完成修改包名相关资源------------------------------\n");
    }

    // ----------------------------------------------------------------------------------------------------//
    // --------------------------------------------华丽分割线-----------------------------------------------//
    // ----------------------------------------------------------------------------------------------------//

    private void build() {

        apkBuilder.build(Common.getApkTempPath(apkParser));
    }

    // ----------------------------------------------------------------------------------------------------//
    // --------------------------------------------华丽分割线-----------------------------------------------//
    // ----------------------------------------------------------------------------------------------------//

    private void signApk() throws Exception {
        String resourceApkPath = Common.getApkTempPath(apkParser) + File.separator + "dist" + File.separator
                + apkParser.apkName;

        signedApkPath = apkSigner.apkSign(resourceApkPath);

        // signedApkPath = BuildUtils.signed(apkParser, resourceApkPath);
    }

    private void cleanApk() {
        Common.cleanApkCache(apkParser);
        Common.cleanApkCommonDecodeCache(apkParser);
    }

    // --------------

    /**
     * 替换AndoriManifest.xml中有关Application的name；
     * <p>
     * 如果游戏有自带，则替换对应的文件android/app/Application
     * 为第三方的newApplicationName；
     * 如果游戏没有自带，那就直接复制第三方的ApplicationName到AndoriManifest.xml中；
     *
     * @param newApplicationName 第三方的ApplicationName
     */
    public String replaceApplication(String newApplicationName, String manifest) {
        // 先把newApplicationName转化成smali代码
        String tempApplication = newApplicationName;
        String newApplicationInSmali = tempApplication.replaceAll("\\.", "\\/");
        LogUtil.showLog("需要配置的第三方渠道Application为：" + newApplicationInSmali);

        // 获取含有标签<application的那一行
        String applicationLine = FileUtil.readLine(ManifestPath, "<application");

        if (applicationLine != null && applicationLine.contains("android:name")) {
            LogUtil.showLog("此游戏自带Application，开始替换对应文件。。。");

            // 游戏自带了android:name，不替换androidManifet.xml，而是替换游戏Application下的关于
            Pattern p = Pattern.compile("android:name=\"(.*?)\"");
            Matcher m = p.matcher(applicationLine);
            m.find();
            String oldApplicationName = m.group(1);
            LogUtil.showLog("此游戏自带Application，名称是：" + oldApplicationName);

            String oldApplicationNameInSmali = FileUtil.getFilePathFrom(oldApplicationName);
            String oldApplicationPath = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator
                    + oldApplicationNameInSmali + ".smali";
            // 获取真实的含有android/app/Application的smali路径。
            String trueOldApplicationPath = getTrueOldApplicationPath(oldApplicationPath);
            String trueApplicaionContent = FileUtil.read(trueOldApplicationPath);
            LogUtil.showLog("此游戏含有android/app/Application的smali路径：" + trueOldApplicationPath);

            // 替换，因为游戏可能会有自定的方法，把android/app/Application做为参数，所以要单独处理
            //1.替换super：     .super Landroid/app/Application;
            //2.替换引用：           Landroid/app/Application;->
            trueApplicaionContent = trueApplicaionContent.replaceAll(".super Landroid/app/Application;", ".super L"+newApplicationInSmali+";");
            trueApplicaionContent = trueApplicaionContent.replaceAll("Landroid/app/Application;->", "L"+newApplicationInSmali+";->");
            FileUtil.write(trueOldApplicationPath, trueApplicaionContent);
        } else {

            LogUtil.showLog("此游戏无Application，直接复制第三方的Application。。。");

            manifest = manifest.replace("<application", "<application android:name=\"" + newApplicationName + "\"");
        }
        return manifest;
    }

    /**
     * 根据AndroidManifest.xml中的application
     * name，获取真正含有android/app/Application的smali路径，方便替换。
     *
     * @param oldApplicationPath
     * @return
     */
    public String getTrueOldApplicationPath(String oldApplicationPath) {
        String path = "";
        String oldApplicaionContent = FileUtil.read(oldApplicationPath);
        if (oldApplicaionContent.contains("android/app/Application")) {
            // 含有"android/app/Application"
            path = oldApplicationPath;
        } else {
            // 如果没有，依旧是说，CP嵌套了多层,那就找到对应的旧smali
            // .super Lcom/snail/SnailApp;
            Pattern p = Pattern.compile(".super L(.*?);");
            Matcher m = p.matcher(oldApplicaionContent);
            m.find();
            String nexApplicationName = m.group(1);
            nexApplicationName = nexApplicationName.replace("/", ".");
            LogUtil.showLog("下一个获取的Application是=" + nexApplicationName);
            String nextApplicationNameInSmali = FileUtil.getFilePathFrom(nexApplicationName);
            String nextApplicationPath = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator
                    + nextApplicationNameInSmali + ".smali";
            path = getTrueOldApplicationPath(nextApplicationPath);
        }

        return path;
    }

    public void sendLog(String msg) {
        LogUtil.showLog(msg);
    }

    // ------------------

    public static void main(String[] args) throws Exception {

    }
}
