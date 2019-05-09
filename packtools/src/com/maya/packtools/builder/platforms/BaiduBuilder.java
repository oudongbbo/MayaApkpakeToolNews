package com.maya.packtools.builder.platforms;

import java.io.File;
import java.util.Properties;


import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.utils.encrypt.ZipMain;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.config.Common;


public class BaiduBuilder extends BaseBuilder{

	public BaiduBuilder(ApkParser apkParser) {
		super(apkParser);
	}
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {

		String mAppId = oldPro.getProperty("appid").trim();
		String mAppKey = oldPro.getProperty("appkey").trim();

		newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
		newPro.setProperty("mAppKey", ZipMain.zipOption("0", mAppKey));
	}
	
	@Override
	protected String handleApplication(String manifest) {
		return replaceApplication("com.feimiao.sdk.m.platform.BaiduGameApplication", manifest);
	}
	
	
	@Override
	protected void handleSdkPlugins(String sdkplugin, Properties prop) {

		String baiduContent = FileUtil.read(sdkplugin);
//		//处理QQ钱包
//		Pattern p = Pattern.compile("android:scheme=\"qwallet(.*?)\"");
//		Matcher m = p.matcher(baiduContent);
//		m.find();
//		String qwallet = m.group(1);
//		baiduContent = baiduContent.replaceAll("qwallet"+qwallet, "qwallet"+pname);
//		
//		LogUtil.showLog("QQ钱包处理:" + "qwallet"+qwallet +" 替换为 " + "qwallet"+pname );
//		
//		//处理支付宝
//		p = Pattern.compile("android:scheme=\"bdpsdk(.*?)\"");
//		m = p.matcher(baiduContent);
//		m.find();
//		String bdpsdk = m.group(1);
//		baiduContent = baiduContent.replaceAll("bdpsdk"+bdpsdk, "bdpsdk"+pname);
//		
//		LogUtil.showLog("QQ钱包处理:" + "bdpsdk"+bdpsdk +" 替换为 " + "bdpsdk"+pname );
//		
//		
//		
//		//处理多酷SDK
//		 p = Pattern.compile("android:authorities=\"(.*?)\"");
//		 m = p.matcher(baiduContent);
//		m.find();
//		String authorities = m.group(1);
//		baiduContent = baiduContent.replaceAll("android:authorities=\""+authorities+"\"", "android:authorities=\""+pname+"\"");
//		
//		LogUtil.showLog("多酷SDK;" + "android:authorities=\""+authorities+"\"" + "----->"+"android:authorities=\""+pname+"\"");
		
//		com.feimiao.xa.sfly.baidu
		
		//默认包名是tag，每次打包的时候都要替换掉
		String tag = "com.feimiao.xa.sfly.baidu";
		baiduContent = baiduContent.replaceAll(tag, pname);
		
		FileUtil.write(sdkplugin, baiduContent);
	}
	
	@Override
	protected void handleLibsBeforeCopy() {
		
		File baidu_smali = new File(Common.getApkTempPath(apkParser)+File.separator +"smali");
		
		if(baidu_smali.exists()){
			
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
