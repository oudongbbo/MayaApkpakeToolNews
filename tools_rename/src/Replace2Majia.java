
import com.maya.base.utils.FileUtil;

import java.io.File;

public class Replace2Majia {


    public static void main(String[] args) throws Exception {


        String rootPath = "/Users/smalli/WorkSpace/Project/Mayauc/Android//sdk/Fanxun_sdk";

        //1.替换所有文件名，和文件夹名称
        FileUtil.replaceDirAndFileName(new File(rootPath), "maya", "fanxun");

        //替换项目相关
        FileUtil.replaceDirAndFileName(new File(rootPath), "maya_", "Fanxun_");


        //2.替换代码内容

        //包名/用户存储：com.maya.        com.fanxun.
        FileUtil.replaceFileContent(new File(rootPath), "com.maya.", "com.fanxun.");
        //资源前缀：maya_         fanxun_
        FileUtil.replaceFileContent(new File(rootPath), "maya_", "fanxun_");
        //域名：mayauc.com           fdfanxun.com
        FileUtil.replaceFileContent(new File(rootPath), "mayauc.com", "fdfanxun.com");
        //加密字段：maya.com           fanxun.com
        FileUtil.replaceFileContent(new File(rootPath), "maya.com", "fanxun.com");

        //接口相关：
        //MayaMsdk  改为   FxMsdk
        FileUtil.replaceFileContent(new File(rootPath), "MayaMsdk", "FxMsdk");

        FileUtil.replaceFileContent(new File(rootPath), "MyMsdkCallback", "FxMsdkCallback");

        FileUtil.replaceFileContent(new File(rootPath), "FMSdkCore", "FxSdkCore");

        FileUtil.replaceFileContent(new File(rootPath), "FMDemoActivity", "FxDemoActivity");

        //3.删除无用的文件
        //删除闪屏图

//        FileUtil.delDir(new File(""));
    }


}
