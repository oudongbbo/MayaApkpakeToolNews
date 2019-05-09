package com.maya.packtools.builder.platforms;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;





import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.utils.encrypt.ZipMain;
import com.maya.packtools.model.ApkParser;


public class LenovoBuilder extends BaseBuilder{

	public LenovoBuilder(ApkParser apkParser) {
		super(apkParser);
	}
	
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {

		String mAppId = oldPro.getProperty("appid").trim();
		//String mPayKey = oldPro.getProperty("paykey").trim();
		
		newPro.setProperty("mAppId", ZipMain.zipOption("0", mAppId));
		//newPro.setProperty("mPayKey", ZipMain.zipOption("0", mPayKey));
	}
	
	
	@Override
	protected void handleSdkPlugins(String sdkplugin, Properties prop) {

		String mAppId = prop.getProperty("appid").trim();


		String _levonoContent = FileUtil.read(sdkplugin);

		//替换appid
		Pattern p = Pattern.compile("<meta-data android:name=\"lenovo.open.appid\" android:value=\"(.*?)\"");
		Matcher m = p.matcher(_levonoContent);
		m.find();
		String open_id = m.group(1);
		_levonoContent = _levonoContent.replaceAll(open_id,mAppId);



		p=Pattern.compile("<meta-data android:name=\"lenovo:channel\" android:value=\"(.*?)\"/>");
		m = p.matcher(_levonoContent);
		m.find();
		String open_id2 = m.group(1);
		_levonoContent = _levonoContent.replaceAll(open_id2,mAppId);

		p=Pattern.compile("<action android:name=\"com.lenovo.lsf.gamesdk.receiver.GameSdkReceiver\"/> <action android:name=\"(.*?)\"/>");
		m = p.matcher(_levonoContent);
		m.find();
		String open_id3 = m.group(1);
		_levonoContent = _levonoContent.replaceAll(open_id3,mAppId);



		p=Pattern.compile("<category android:name=\"android.intent.category.DEFAULT\"/> <data android:scheme=\"(.*?)\"/>");
		m = p.matcher(_levonoContent);
		m.find();
		String open_id5 = m.group(1);
		_levonoContent = _levonoContent.replaceAll(open_id5,mAppId);


		p=Pattern.compile("<meta-data android:name=\"alipayquick\" android:value=\"(.*?)\"/>");
		m = p.matcher(_levonoContent);
		m.find();
		String open_id4 = m.group(1);
		_levonoContent = _levonoContent.replaceAll(open_id4,mAppId);



		_levonoContent = _levonoContent.replaceAll("com.feimiao.ky.wzzg.lenovo", pname);

		_levonoContent = _levonoContent.replaceAll("com.pay.sample.lenovo.lenovo.fileprovider", pname+".fileprovider");

		//
//		String landOri = "android:screenOrientation=\"landscape\"";
//		String portraitOri = "android:screenOrientation=\"portrait\"";
//		if ("1".equals(land)) {
//			//横屏
//			_levonoContent = _levonoContent.replaceAll(portraitOri,landOri);
//		}else {
//			//竖屏
//			_levonoContent = _levonoContent.replaceAll(landOri,portraitOri);
//		}

		/*// 替换游戏包名+fileprovider
		p = Pattern.compile("<provider android:name=\"android.support.v4.content.FileProvider\" android:authorities=\"(.*?).fileprovider\"");
		m = p.matcher(_levonoContent);
		m.find();
		String fileproviderFront = m.group(1);
		LogUtil.log("替换掉 " + fileproviderFront);
		// 并且替换所有与包名有关的信息
		_levonoContent = _levonoContent.replaceAll(fileproviderFront, pname);*/


		FileUtil.write(sdkplugin, _levonoContent);
		
	}

	@Override
	protected void handleAndroidManifestBySDK() {
		
		String manifestContent = FileUtil.read(ManifestPath);

		manifestContent = manifestContent.replaceFirst("android.intent.action.MAIN", "lenovoid.MAIN");
		manifestContent = manifestContent.replaceFirst("android.intent.category.LAUNCHER","android.intent.category.DEFAULT");
		
		FileUtil.write(ManifestPath, manifestContent);
	}

	
	
}
