
import com.maya.base.utils.FileUtil;

import java.io.*;
import java.util.Date;
import java.util.HashMap;
import java.util.Properties;

public class Replace2Leidong {


    public static void main(String[] args) throws Exception {

        //主工程目录
        String sdkProjectPath = "/Users/smalli/WorkSpace/Project/Mayauc/Android/leidong/sdk/Leidong_sdk";
        String sdkDemoPath = "/Users/smalli/WorkSpace/Project/Mayauc/Android/leidong/sdk/Leidong_sdk_demo";

        File sdkProjectFile = new File(sdkProjectPath);
        File sdkDemoFile = new File(sdkDemoPath);

        String resExtraPath = "/Users/smalli/WorkSpace/Project/Mayauc/Android/leidong/sdk/Leidong_res_extra/res";


        //1.替换所有文件名，和文件夹名称
        FileUtil.replaceDirAndFileName(sdkProjectFile, "maya", "leidong");
        FileUtil.replaceDirAndFileName(sdkDemoFile, "maya", "leidong");

        FileUtil.replaceDirAndFileName(sdkProjectFile, "Maya_", "Leidong_");
        FileUtil.replaceDirAndFileName(sdkDemoFile, "Maya_", "Leidong_");


        //子工程目录
        String sdkProjectAppPath = sdkProjectPath + File.separator + "app" + File.separator + "src" + File.separator + "main";
        String sdkProjectResPath = sdkProjectPath + File.separator + "leidong_sdk_res" + File.separator + "src" + File.separator + "main";
        String sdkDemoAppPath = sdkDemoPath + File.separator + "app" + File.separator + "src" + File.separator + "main";


        //如果是马甲SDK要对所有的资源进行特殊处理
        //--------------------------------1.处理assets--------------------------------


        //--1.2-处理行为
        FileUtil.delFileUnderDir(sdkProjectFile, "leidong_splash");
        FileUtil.delFileUnderDir(sdkDemoFile, "leidong_splash");


        //app/src/main/assets
        String assetsRootPath = sdkProjectAppPath + File.separator + "assets";

        //--1.1-配置文件
        String leidongMsdkPath = assetsRootPath + File.separator + "leidongMsdk.ini";

        //--1.3-处理fanxunMsdk.ini的参数，只有自营SDK的时候才处理
        File newMsdkFile = new File(leidongMsdkPath);
        try {
            if (!newMsdkFile.exists()) {
                newMsdkFile.createNewFile();
            }
            if (newMsdkFile.exists()) {
                //读取文件
                Properties properties = new Properties();
                BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(leidongMsdkPath)));
                properties.load(reader);
                //设置参数
                properties.setProperty("sdk", String.valueOf(101));
                properties.setProperty("showSplash", "0");//无闪屏
                properties.setProperty("showExit", "0");//无退出框
                //重新保存
                FileOutputStream sdkfos = new FileOutputStream(leidongMsdkPath);
                properties.store(sdkfos, new Date().toGMTString());
                sdkfos.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        FileUtil.copyFile(newMsdkFile, new File(sdkDemoAppPath + File.separator + "assets" + File.separator + "leidongMsdk.ini"));

        //--1.4-记得后续代码处理的时候要记得替换相关代码


        //--------------------------------2.处理res--------------------------------
        String resRootPath = sdkProjectResPath + File.separator + "res";

        //--2.1-处理文件名，全部重名
        FileUtil.replaceDirAndFileName(new File(resRootPath), "maya_", "leidong_");
        //--2.2-处理文件内容，全部替换
        FileUtil.replaceFileContentUnderDir(new File(resRootPath), "maya_", "leidong_");
        //--2.3-替换马甲的资源
        FileUtil.copyDirectiory(resExtraPath, resRootPath);


        //--------------------------------3.处理代码-------------- ------------------
        //--3.1-处理文件夹名,maya  leidong
//            String smaliMayaPath = smaliRootPath + File.separator + "com" + File.separator + "maya";
//            FileUtil.renameFile(smaliMayaPath, smaliMajiaPath);
//            FileUtil.replaceDirAndFileName(new File(smaliRootPath), "maya", "leidong");

        ///Users/smalli/WorkSpace/Project/Mayauc/Android/leidong/sdk/Leidong_sdk/leidong_sdk_m/src/main/java/com/leidong/sdk/m/FmMsdk.java
        ///Users/smalli/WorkSpace/Project/Mayauc/Android/leidong/sdk/Leidong_sdk/leidong_sdk_m/src/main/java/com/leidong/sdk/m/FmMsdkCallback.java
        ///Users/smalli/WorkSpace/Project/Mayauc/Android/leidong/sdk/Leidong_sdk/leidong_sdk_m/src/main/java/com/leidong/sdk/m/platform/FmPlatform.java

        ///Users/smalli/WorkSpace/Project/Mayauc/Android/leidong/sdk/Leidong_sdk/leidong_sdk_s/src/main/java/com/leidong/sdk/s/app/FMSdkCore.java
        ///Users/smalli/WorkSpace/Project/Mayauc/Android/leidong/sdk/Leidong_sdk/leidong_sdk_s/src/main/java/com/leidong/sdk/s/app/FMDemoActivity.java

        //--3.2-替换文件名 FmMsdk FmMsdkCallback  FmPlatform 等
        String FmMsdk = sdkProjectPath + File.separator + "leidong_sdk_m/src/main/java/com/leidong/sdk/m/FmMsdk.java";
        String FmMsdkCallback = sdkProjectPath + File.separator + "leidong_sdk_m/src/main/java/com/leidong/sdk/m/FmMsdkCallback.java";
        String FmPlatform = sdkProjectPath + File.separator + "leidong_sdk_m/src/main/java/com/leidong/sdk/m/platform/FmPlatform.java";
        String FMSdkCore = sdkProjectPath + File.separator + "leidong_sdk_s/src/main/java/com/leidong/sdk/s/app/FMSdkCore.java";
        String FMDemoActivity = sdkProjectPath + File.separator + "leidong_sdk_s/src/main/java/com/leidong/sdk/s/app/FMDemoActivity.java";


        String LeiMsdk = sdkProjectPath + File.separator + "leidong_sdk_m/src/main/java/com/leidong/sdk/m/LeiMsdk.java";
        String LeiMsdkCallback = sdkProjectPath + File.separator + "leidong_sdk_m/src/main/java/com/leidong/sdk/m/LeiMsdkCallback.java";
        String LeiPlatform = sdkProjectPath + File.separator + "leidong_sdk_m/src/main/java/com/leidong/sdk/m/platform/LeiPlatform.java";
        String LeiSdkCore = sdkProjectPath + File.separator + "leidong_sdk_s/src/main/java/com/leidong/sdk/s/app/LeiSdkCore.java";
        String LeiDemoActivity = sdkProjectPath + File.separator + "leidong_sdk_s/src/main/java/com/leidong/sdk/s/app/LeiDemoActivity.java";


        FileUtil.renameFile(FmMsdk, LeiMsdk);
        FileUtil.renameFile(FmMsdkCallback, LeiMsdkCallback);
        FileUtil.renameFile(FmPlatform, LeiPlatform);
        FileUtil.renameFile(FMSdkCore, LeiSdkCore);
        FileUtil.renameFile(FMDemoActivity, LeiDemoActivity);

        //--3.3-替换代码中内容
        //--包名：com/maya/sdk    com/leidong/sdk
        //--包名：com/maya/open    com/leidong/open
        //--接口：FmMsdk FxMsdk
        //--接口：FmMsdkCallback FxMsdkCallback
        //--接口：FmPlatform FxPlatform
        //--资源ID：maya_ leidong_
        //--域名：mayauc.com           fdleidong.com
        //加密字段：maya.com           leidong.com
        //参数配置：mayaGame.ini   leidongGame.ini
        //参数配置：mayaMsdk.ini   leidongMsdk.ini
        //闪屏：maya_splash   leidong_splash
        HashMap<String, String> contents = new HashMap<>();
        contents.put("com.maya.", "com.leidong.");
        contents.put("MayaMsdk", "LeiMsdk");
        contents.put("MyMsdkCallback", "LeiMsdkCallback");
        contents.put("FmPlatform", "LeiPlatform");
        contents.put("maya_", "leidong_");
        contents.put("mayaGame.ini", "leidongGame.ini");
        contents.put("mayaMsdk.ini", "leidongMsdk.ini");
        contents.put("maya_splash", "leidong_splash");

        contents.put("FMSdkCore", "LeiSdkCore");
        contents.put("com.maya.system", "com.leidong.system");
//        FileUtil.replaceFileContentUnderDir(new File(sdkProjectPath), contents);

        //--3.4-特殊处理，只在我方代码中替换，防止研发有用到，比如定制游戏，用我方主域名的
//        HashMap<String, String> contents2 = new HashMap<>();
        contents.put("mayauc.com", "thunderplaygame.com");
        contents.put("maya.com", "leidong.com");
        FileUtil.replaceFileContentUnderDir(new File(sdkProjectPath), contents);
        FileUtil.replaceFileContentUnderDir(new File(sdkDemoPath), contents);

        //--

        //--------------------------------4.处理AndroidManifest.xml--------------------------------
        String sdkManifestPath = sdkProjectAppPath + File.separator + "AndroidManifest.xml";
        String demoManifestPath = sdkDemoAppPath + File.separator + "AndroidManifest.xml";

        //--修改组件的引用：com.maya.sdk    com.leidong.sdk
        FileUtil.replaceFileContent(new File(sdkManifestPath), "com.maya.sdk", "com.leidong.sdk");
        FileUtil.replaceFileContent(new File(demoManifestPath), "com.maya.sdk", "com.leidong.sdk");
        //--修改资源的引用：maya_
        FileUtil.replaceFileContent(new File(sdkManifestPath), "maya_", "leidong_");
        FileUtil.replaceFileContent(new File(demoManifestPath), "maya_", "leidong_");


    }
}