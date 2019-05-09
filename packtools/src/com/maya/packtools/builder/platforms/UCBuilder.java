package com.maya.packtools.builder.platforms;

import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.maya.base.utils.FileUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.model.ApkParser;

public class UCBuilder extends BaseBuilder{

	public UCBuilder(ApkParser apkParser) {
		super(apkParser);
	}
	
	@Override
	public void handlePlatformComConfig(Properties newPro,Properties oldPro) {
		String gameId = oldPro.getProperty("gameId").trim();
		newPro.setProperty("gameId", gameId);
	}

	@Override
	protected void handleSdkPlugins(String sdkplugin, Properties prop) {

		String gameId = prop.getProperty("gameId").trim();
		String ucContent = FileUtil.read(sdkplugin);
		Pattern p = Pattern.compile("<data android:scheme=\"an(.*?)\"/>");
		Matcher m = p.matcher(ucContent);
		m.find();
		String gid = m.group(1);
		ucContent = ucContent.replaceAll(gid,gameId);

		Pattern p2 = Pattern.compile("android:taskAffinity=\"(.*?).diff\"");
		Matcher m2 = p2.matcher(ucContent);
		m2.find();
		String pgn = m2.group(1);
		ucContent = ucContent.replaceAll(pgn,pname);

		FileUtil.write(sdkplugin, ucContent);


	}
}
