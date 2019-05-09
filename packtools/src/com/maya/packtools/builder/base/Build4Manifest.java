package com.maya.packtools.builder.base;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.maya.base.utils.FileUtil;


public class Build4Manifest {
	
	
	public  static void handleAndroidManifest(String gid,int sdk,String manifestPath){
		Pattern p;
		Matcher m;
		
		int GID = Integer.parseInt(gid);
		String manifest = FileUtil.read(manifestPath);
		
		switch (GID) {
		
		case 100005:
//			 manifest = manifest.replaceAll(BaseBuilder.pname_old, BaseBuilder.pname);
//			 FileUtil.write(manifestPath, manifest);
			break;
			

			
		case 100011:
			//龙族契约[100011]
//			String p_100011 = "getui.permission.GetuiService.com.junhai.lzqy.starjoys";
//			String p_100011_new = "getui.permission.GetuiService."+BaseBuilder.pname;
//
//			manifest = manifest.replaceAll(p_100011,p_100011_new);
//			FileUtil.write(manifestPath, manifest);
			break;
			
		case 100180:
			// 《终极王者》天拓混服包处理自定义权限
			
//			Pattern pattern = Pattern.compile("android:name=\"(.*?).permission.JPUSH_MESSAGE\"");
//			Matcher matcher= pattern.matcher(manifest);
//			matcher.find();
//			String pnameOld = matcher.group(1);  //获取到原包名
//			manifest = manifest.replaceAll(pnameOld+".permission.JPUSH_MESSAGE", BaseBuilder.pname+".permission.JPUSH_MESSAGE");
//
//			FileUtil.write(manifestPath, manifest);
			
			break;
			

		default:
			break;
		}
	}
}
