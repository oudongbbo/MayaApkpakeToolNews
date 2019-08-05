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

import static com.maya.packtools.builder.Platforms.SDK_NAME_MAYA;


public class BaiduBuilder extends BaseBuilder {

    public BaiduBuilder(ApkParser apkParser) {
        super(apkParser);
    }

    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {

        String mAppId = oldPro.getProperty("appid").trim();
        String mAppKey = oldPro.getProperty("appkey").trim();

        newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
        newPro.setProperty("mAppKey", ZipMain.zipOption("0", mAppKey));
    }

    @Override
    protected String handleApplication(String manifest) {

        if(SDK_NAME_MAYA.equals("leidong")){
            return replaceApplication("com.leidong.sdk.m.platform.BaiduGameApplication", manifest);
        }else{
            return replaceApplication("com.maya.sdk.m.platform.BaiduGameApplication", manifest);
        }


    }


    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

        String baiduContent = FileUtil.read(sdkplugin);
        //处理QQ钱包
        Pattern p = Pattern.compile("<data android:scheme=\"qwallet(.*?)\"/>");
        Matcher m = p.matcher(baiduContent);
        m.find();
        String qwallet = m.group(1);
        baiduContent = baiduContent.replaceAll("qwallet" + qwallet, "qwallet" + pname);

		LogUtil.showLog("QQ钱包处理:" + "qwallet"+qwallet +" 替换为 " + "qwallet"+pname );
//		
		//处理支付宝
		p = Pattern.compile("<data android:scheme=\"bdpsdk(.*?)\" android:host=\"alipay.app\" android:pathPrefix=\"/result\"/>");
		m = p.matcher(baiduContent);
		m.find();
		String bdpsdk = m.group(1);
		baiduContent = baiduContent.replaceAll(bdpsdk, pname);

		LogUtil.showLog("QQ钱包处理:" + "bdpsdk"+bdpsdk +" 替换为 " + "bdpsdk"+pname );
//		
//		
//		
		//处理多酷SDK
		 p = Pattern.compile("android:authorities=\"(.*?).bdpush\"");
		 m = p.matcher(baiduContent);
		m.find();
		String authorities = m.group(1);
		baiduContent = baiduContent.replaceAll(authorities, pname);



        //处理多酷SDK
        p = Pattern.compile("android:authorities=\"(.*?)\"");
        m = p.matcher(baiduContent);
        m.find();
        String authorities1 = m.group(1);
        baiduContent = baiduContent.replaceAll(authorities1, pname);



        //处理多酷SDK
        p = Pattern.compile("android:authorities=\"(.*?).TENCENT.MID.V3\"");
        m = p.matcher(baiduContent);
        m.find();
        String authorities2 = m.group(1);
        baiduContent = baiduContent.replaceAll(authorities2, pname);



        //处理多酷SDK
        p = Pattern.compile("android:authorities=\"(.*?).bdgame.fileprovider\"");
        m = p.matcher(baiduContent);
        m.find();
        String authorities3 = m.group(1);
        baiduContent = baiduContent.replaceAll(authorities3, pname);


        FileUtil.write(sdkplugin, baiduContent);
    }

    @Override
    protected void handleLibsBeforeCopy() {

        File baidu_smali = new File(Common.getApkTempPath(apkParser) + File.separator + "smali");

        if (baidu_smali.exists()) {

            File baidu_unionpay = new File(Common.getApkTempPath(apkParser)
                    + System.getProperty("file.separator") + "smali"
                    + System.getProperty("file.separator") + "com"
                    + System.getProperty("file.separator") + "unionpay");

            File baidu_ucmobile = new File(Common.getApkTempPath(apkParser)
                    + System.getProperty("file.separator") + "smali"
                    + System.getProperty("file.separator") + "com"
                    + System.getProperty("file.separator") + "UCMobile");

            File baidu_pbc = new File(Common.getApkTempPath(apkParser)
                    + System.getProperty("file.separator") + "smali"
                    + System.getProperty("file.separator") + "cn"
                    + System.getProperty("file.separator") + "gov"
                    + System.getProperty("file.separator") + "pbc"
                    + System.getProperty("file.separator") + "tsm"
                    + System.getProperty("file.separator") + "client"

            );

            if (baidu_unionpay.exists()) {
                FileUtil.delDir(baidu_unionpay);
                LogUtil.showLog("百度渠道删除：" + baidu_unionpay.toString());
            }
            if (baidu_ucmobile.exists()) {
                FileUtil.delDir(baidu_ucmobile);
                LogUtil.showLog("百度渠道删除：" + baidu_ucmobile.toString());
            }
            if (baidu_pbc.exists()) {
                FileUtil.delDir(baidu_pbc);
                LogUtil.showLog("百度渠道删除：" + baidu_pbc.toString());
            }

        }
    }

    @Override
    protected void handleTempRFiles() {

        String finalPnamePath = "com.feimiao.xa.sfly.baidu";
        LogUtil.showLog("从此包名下复制文件-->" + finalPnamePath);

        copyFileAndReplacePackageName(SDK, finalPnamePath, pname);
    }


}
