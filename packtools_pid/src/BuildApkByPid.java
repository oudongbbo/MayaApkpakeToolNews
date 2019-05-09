import java.io.File;
import java.io.IOException;
import java.util.List;


import com.maya.packtools.builder.PlatformBuild;
import com.maya.packtools.builder.Platforms;
import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.base.utils.SystemUtil;
import com.maya.base.utils.StreamController;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.model.CmdParser;
import com.maya.packtools.config.Common;

import static com.maya.packtools.builder.Platforms.SDK_NAME_MAYA;

public class BuildApkByPid {


    public static void main(String[] args) throws Exception {
        //解析参数
        buildAPK(args);

    }


    public static void buildAPK(String[] args) {

        //--------------------------------渠道打包规则更改------------------------------------------------
        //packtools_pid.jar xxx.apk pidName gameName type output user


        //pidName:   比如 ysdk,360,all
        //gameName:  独代游戏，采用具体的如 lzqy,联运游戏，统称：LY ,或者空，默认联运
        //type:      m或者s，m表示有多个包要打，反编译放到公共文件，后再进行复制；s表示单个包，反编译直接到对应目录,同时回去删除公共目录
        //output:    输出目录,如果output不为空，则需要补全前面的参数
        //user:      用户名，不指定默认到"local"目录


        //联运包：
        //--单独打包：packtools_pid.jar xxx.apk  ysdk
        //--单独打包：packtools_pid.jar xxx.apk  ysdk LY s output user
        //--多个打包：packtools_pid.jar xxx.apk  ysdk LY m
        //--多个打包：packtools_pid.jar xxx.apk  ysdk LY m output
        //--全渠道打包:packtools_pid.jar xxx.apk  all
        //补全就是:packtools_pid.jar xxx.apk  all LY
        //添加输出目录:packtools_pid.jar xxx.apk  all LY m output


        //独代游戏：
        //--单独打包：packtools_pid.jar xxx.apk  ysdk lzqy
        //--单独打包：packtools_pid.jar xxx.apk  ysdk lzqy s output
        //--多个打包：packtools_pid.jar xxx.apk  ysdk lzqy m
        //--多个打包：packtools_pid.jar xxx.apk  ysdk lzqy m output
        //--全渠道打包：packtools_pid.jar xxx.apk all lzqy
        //--全渠道打包：packtools_pid.jar xxx.apk all lzqy m output


        //----------------本地手动打包时候可以缩略，在线打包的时，需要所有参数都拼接好----------------------


        sendLog(">>>>>>打包开始<<<<<<");
        sendLog(">>>>>>获取参数<<<<<<");

        String pidName = SDK_NAME_MAYA;//默认渠道代号
        String gameName = "LY";//默认联运游戏
        String output = "";//输出目录
        String type = "s";//默认单个打包
        String user = "local";//用户名

        pidName = args[1];

        if (args.length > 2) {
            gameName = args[2];
        }
        if (args.length > 3) {
            type = args[3];
        }
        if (args.length > 4) {
            output = args[4];
        }
        if (args.length > 5) {
            user = args[5];
        }
        //
        CmdParser cmdParser = new CmdParser(args);
        ApkParser apkParser = new ApkParser(cmdParser);
        apkParser.gameName = gameName;
        apkParser.isDudai = "LY".equals(gameName) ? false : true;
        apkParser.isDeleteDecodeFile = "s".equals(type) ? true : false;
        apkParser.sdkName = pidName;
        apkParser.apkOutputParentPath = output != null && !"".equals(output) ? output.trim() : "";
        apkParser.operator = user != null && !"".equals(output) ? user.trim() : "User";

        if ("all".equals(pidName)) {
            //全渠道打包
            apkParser.isDeleteDecodeFile = false;
            //把所有渠道记录到sdks中，哪怕一条
            List<String> sdkNames = apkParser.getPlatformsFromConfig(apkParser);
            if (sdkNames.size() == 0) {
                sendLog("没有找到参数，退出打包");
                System.exit(0);
            } else {
                apkParser.sdkNames = sdkNames;
                for (int i = 0; i < sdkNames.size(); i++) {

                    sendLog("【多渠道】打包：第" + (i + 1) + "个，渠道是：" + sdkNames.get(i));

                    apkParser.currentSdkName = sdkNames.get(i);
                    apkParser.currentSdkNo = Platforms.getSdkNoByName(sdkNames.get(i));

                    if (i == sdkNames.size() - 1) {
                        //最后一个时候，isDeleteDecodeFile要设置为true
                        apkParser.isDeleteDecodeFile = true;
                    }
                    PlatformBuild.singleWork(apkParser);
                }
            }
        } else {
            //单个渠道打包
            sendLog("【单渠道】打包：渠道是：" + pidName);
            apkParser.currentSdkName = pidName;
            apkParser.currentSdkNo = Platforms.getSdkNoByName(pidName);

            boolean canrun = isPackConfigExist(apkParser);
            if (canrun) {
                //可以运行
                PlatformBuild.singleWork(apkParser);
            } else {
                //不可以运行
                sendLog("--------Fail--------");
                sendLog("当前打包参数不存在，当前渠道无法打包");
                System.exit(0);
            }
        }

        sendLog(">>>>>>打包完成<<<<<<");
    }


    public static boolean isPackConfigExist(ApkParser apkconfig) {

        String configPath = Common.getSdkConfigsPath(apkconfig);

        sendLog("当前打包的参数路径是:" + configPath);

        File config_file = new File(configPath);

        if (config_file.exists()) {
            return true;
        } else {
            return false;
        }

    }


    public static boolean checkSingleConfigPath(ApkParser apkconfig) {

        String configPath = Common.getSdkConfigsPath(apkconfig);

        sendLog("参数路径=" + configPath);

        try {
            File config_file = new File(configPath);
            if (config_file.exists()) {
                return true;
            } else {
                File parent = new File(Common.getSdkConfigsParent(apkconfig));
                if (!parent.exists()) {
                    parent.mkdir();
                }

                String defaultPath = Common.SDKS_CONFIGS + "Default" + File.separator + apkconfig.currentSdkName + ".cfg";
                File defaultFile = new File(defaultPath);
                if (defaultFile.exists()) {
                    moveFile(defaultPath, configPath);
                } else {
                    StringBuilder content = new StringBuilder();
                    content.append("isLandScape=1     \n");
                    content.append("isFinal=1         \n");
                    content.append("pname=            \n");
                    content.append("appid=            \n");
                    content.append("appkey=           \n");
                    config_file.createNewFile();
                    FileUtil.write(configPath, content.toString());
                }

//					openFile(configPath);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }


    public static void openFile(String filePath) {
        try {
            Process process;
            if (SystemUtil.isWindowsOS()) {
                process = Runtime.getRuntime().exec("cmd.exe /c " + filePath);
            } else {
                String cmd = "open " + filePath;
                String[] command = {"/bin/sh", "-c", cmd};
                process = Runtime.getRuntime().exec(command);
            }

            StreamController.printStream(process);

            if (process.waitFor() != 0) {
                LogUtil.showLog("渠道参数文件打开失败");
                return;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static void moveFile(String soucePath, String targetPath) {

        File sourceFile = new File(soucePath);
        File targetFile = new File(targetPath);
        if (!targetFile.exists()) {
            targetFile.getParentFile().mkdirs();
        }
        FileUtil.copyFile(sourceFile, targetFile);
    }


    public static void sendLog(String msg) {
        LogUtil.showLog("OneKeyBuild---->" + msg);
    }
}
