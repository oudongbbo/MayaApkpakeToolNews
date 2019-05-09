package apktools;

import java.io.File;
import java.util.HashMap;

import com.maya.base.utils.DateUtil;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.model.CmdParser;
import com.maya.packtools.config.Common;
import com.maya.base.apktools.complier.ApkBuild;
import com.maya.base.apktools.complier.ApkDecode;
import com.maya.base.apktools.complier.ApkSign;
import com.maya.base.apktools.tool.ReApkIcon;
import com.maya.base.apktools.tool.ReAppName;
import com.maya.base.apktools.tool.ReAppVerCode;
import com.maya.base.apktools.tool.ReAppVerName;
import com.maya.base.apktools.tool.RePackName;
import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.base.utils.LogUtil.LogLevel;
import com.maya.packtools.model.SdkConfig;


/**
 * 在线打包基本功能
 * 输入参数：
 * 1.apk文件路径
 * 2.判断更改类型（   -i:换icon -vc:换版本号 -vn：换版本名 -an：换游戏名 -pn：换包名 -gid:换gid  -pid:换pid   -mid:换mid   ）
 * 3.输出地址（-o：输出目录地址，没有时，默认输出到源文件根目录）
 */
public class ApkTools {

    // 各种路径

    // 签名信息
    private static String KEYSTORE_NAME = "mayauc.keystore";
    private static String KEYSTORE_PASS = "www.mayauc.com@888";
    private static String KEYSTORE_ALIAS = "maya";
    private static String KEYSTORE_ALIAS_PASS = "android@maya.com";
    // 各种变量
    private static String apkSourcPath;// apk母包路径
    private static String apkTempSourcPath;// apk临时母包的路径
    private static String apkDecodePath; // apk反编译文件存放目录
    private static String apkSavePath;// apk最终存储(目录)

    private static String unSignedApkPath;//代签名的文件路径
    private static String signedApkPath;//签完名的文件路径

    // 各种工具
    private static ApkDecode apkDecoder;
    private static ApkBuild apkBuilder;
    private static ApkSign apkSigner;

    public static void main(String[] args) {

        // 准备好工具
        prepare();
        // 开始处理
        runApktools(args);

    }

    public static void prepare() {

        apkBuilder = new ApkBuild(Common.TOOLBOX_TOOLKIT + "apktool.jar");
        apkDecoder = new ApkDecode(Common.TOOLBOX_TOOLKIT + "apktool.jar");
        apkSigner = new ApkSign();
        apkSigner.setRarPathAtWindows(Common.WinRarPath);
        apkSigner.setSignParams(Common.TOOLBOX_KEYSTORE, KEYSTORE_NAME, KEYSTORE_PASS, KEYSTORE_ALIAS, KEYSTORE_ALIAS_PASS);
    }

    public static void runApktools(String[] args) {

        LogUtil.showLog("开始运行打包工具", LogLevel.LEVEL_1);

        CmdParser cmdParser = new CmdParser(args);
        ApkParser apkParser = new ApkParser(cmdParser);

        //获取到源文件后，先复制出来再处理，避免处理到源文件
        apkSourcPath = args[0].trim();
        File apkSourcFile = new File(apkSourcPath);

        apkTempSourcPath = apkSourcFile.getParent() + File.separator + DateUtil.getFormatDateTime() + "_" + apkSourcFile.getName();
//      apkTempSourcPath = apkTrueSourcePath.substring(0, apkSourcPath.lastIndexOf("."))+"_"+new Date().toString()+".apk";
        File apkTempSourceFile = new File(apkTempSourcPath);

        FileUtil.copyFile(apkSourcFile,apkTempSourceFile);

        LogUtil.showLog("母包来源：" + apkSourcPath);
        LogUtil.showLog("备份母包来源：" + apkTempSourcPath);


        apkDecodePath = apkTempSourcPath.substring(0, apkTempSourcPath.lastIndexOf("."));


        //-----------------解析获取到的参数-----------------
        HashMap<String, String> map = ApkToolSupport.judgeInput(args);

        if (ApkToolSupport.hasOutputPath) {
            //有指定输入目录
            System.out.println("指定输出目录");
            apkSavePath = map.get(ApkToolSupport.TYPE_OUTPUT);
        } else {
            System.out.println("输出目录就是源文件根目录");
            apkSavePath = apkTempSourceFile.getParent();
        }

        LogUtil.showLog("目标路径：" + apkSavePath);
        File savePathFile = new File(apkSavePath + File.separator + "new_" + apkTempSourceFile.getName());


        //------------------其他核心处理逻辑-----------------

        // 处理icon还需要处理其他功能
        if (ApkToolSupport.isChangeICON) {
            // 执行修改icon
            System.out.println("修改icon");
            String newIconPath = map.get(ApkToolSupport.TYPE_ICON);
            ReApkIcon.changeNewIcon(apkTempSourcPath, newIconPath);
        }

        //处理gid、pid、mid
        if (ApkToolSupport.isChangegGameId || ApkToolSupport.isChangegCchId || ApkToolSupport.isChangegMdId) {
            String gid = "";
            String pid = "";
            String mid = "";
            if (ApkToolSupport.isChangegGameId) {
                System.out.println("修改gid");
                gid = map.get(ApkToolSupport.TYPE_GAMEID);
            }
            if (ApkToolSupport.isChangegCchId) {
                System.out.println("修改pid");
                pid = map.get(ApkToolSupport.TYPE_CCHID);
            }
            if (ApkToolSupport.isChangegMdId) {
                System.out.println("修改mid");
                mid = map.get(ApkToolSupport.TYPE_MDID);
            }
            //替换属性文件后，移动到原来位置
            SdkConfig.changeSdkConfig(apkParser, apkTempSourcPath, gid, pid, mid);
        }

        //反编译，回编译相关
        if (ApkToolSupport.isChangeAPPName || ApkToolSupport.isChangePackageName || ApkToolSupport.isChangeVersionName || ApkToolSupport.isChangeVersionCode) {
            // 进行反编译
            decode();

            String replaceContent;
            // 修改游戏名
            if (ApkToolSupport.isChangeAPPName) {
                System.out.println("修改游戏名");
                replaceContent = map.get(ApkToolSupport.TYPE_APPNAME);
                new ReAppName().work(apkDecodePath, replaceContent);
            }

            // 修改包名
            if (ApkToolSupport.isChangePackageName) {
                System.out.println("修改包名");
                replaceContent = map.get(ApkToolSupport.TYPE_PACKAGENAME);
                new RePackName().work(apkDecodePath, replaceContent);
            }

            // 修改版本名
            if (ApkToolSupport.isChangeVersionName) {
                System.out.println("修改版本名");
                replaceContent = map.get(ApkToolSupport.TYPE_VERSIONNAME);
                new ReAppVerName().work(apkDecodePath, replaceContent);

            }

            // 修改版本号
            if (ApkToolSupport.isChangeVersionCode) {
                System.out.println("修改版本号");
                replaceContent = map.get(ApkToolSupport.TYPE_VERSIONCODE);
                new ReAppVerCode().work(apkDecodePath, replaceContent);
            }

            // 回编译
            build();

        }

        //签名相关
        if (unSignedApkPath != null && !"".equals(unSignedApkPath)) {
            //未签名的文件已经被赋值，说明来自回编译的文件，则不处理
        } else {
            //否则，没有反编译过，默认用源APK的路径
            unSignedApkPath = apkTempSourcPath;
        }
        sign(unSignedApkPath);

        //移动文件
        move(savePathFile);

        // 删除多余文件
        delete();

        System.out.println("基本功能执行完毕");
    }

    /**
     * 对apk进行反编译
     */
    private static void decode() {
        System.out.println("-->反编译文件<--");
        apkDecoder.decode(apkTempSourcPath, apkDecodePath);
    }

    private static void build() {
        System.out.println("-->回编译编译开始<--");
        apkBuilder.build(apkDecodePath);
        // 得到回编译后的签名目录
        String distPath = apkDecodePath + File.separator + "dist" + File.separator;
        String sourceName = new File(apkTempSourcPath).getName();
        unSignedApkPath = distPath + sourceName;
    }

    private static void delete() {
        System.out.println("-->删除反编译文件<--");
        FileUtil.delDir(new File(apkDecodePath));
        FileUtil.delDir(new File(apkTempSourcPath));
    }


    private static void sign(String unsignedPath) {
        System.out.println("-->签名<--");
        signedApkPath = apkSigner.apkSign(unsignedPath);
    }

    private static void move(File saveFile) {
        System.out.println("-->移动签名文件<--");
        File signApkPathFile = new File(signedApkPath);
        // 将apk目录转移到指定目录下，并删除signApkPath
        FileUtil.copyFile(signApkPathFile, saveFile);
        //删除签名文件
        FileUtil.delDir(signApkPathFile);
    }

    /**
     * 判断控制台输入参数是否合法
     */
//	private static boolean isParamEffective(String sourceApkPath2,String type2, String replaceTarget2) {
//
//		if (sourceApkPath2 == null || "".equals(sourceApkPath2)) {
//			System.out.println("apk路径为空");
//			return false;
//		} else if (!sourceApkPath2.endsWith(".apk")) {
//			System.out.println("不是一个apk文件");
//			return false;
//		}
//
//		if (!(type2.equals("-i") || type2.equals("-vc") || type2.equals("-vn")
//				|| type2.equals("-an") || type2.equals("-pn"))) {
//			System.out.println("修改类型无法识别");
//			return true;
//		}
//
//		if (replaceTarget2 == null || "".equals(replaceTarget2)) {
//			System.out.println("目标参数为空");
//			return false;
//		}
//
//		File apkFile = new File(sourceApkPath2);
//		if (!apkFile.exists()) {
//			System.out.println("apk文件不存在");
//			return false;
//		}
//
//		if (replaceTarget2.contains(".png")) {
//			File iconFileSoure = new File(replaceTarget2); // icon源目录
//
//			if (!iconFileSoure.exists()) {
//				System.out.println("icon文件不存在");
//				return false;
//			}
//		}
//
//		return true;
//	}

}
