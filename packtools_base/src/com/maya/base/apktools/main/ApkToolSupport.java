package com.maya.base.apktools.main;

import java.util.HashMap;

public class ApkToolSupport {
	
	public static final String TYPE_ICON ="-i";
	public static final String TYPE_VERSIONCODE ="-vc";
	public static final String TYPE_VERSIONNAME = "-vn";
	public static final String TYPE_APPNAME = "-an";
	public static final String TYPE_PACKAGENAME = "-pn";
	public static final String TYPE_GAMEID = "-gid";
	
	public static boolean isChangePackageName;
	public static boolean isChangeAPPName;
	public static boolean isChangeVersionCode;
	public static boolean isChangeVersionName;
	public static boolean isChangeICON;
	public static boolean isChangegGameId;

	public static HashMap<String,String> judgeInput(String[] args){
		
		HashMap<String,String> map = new HashMap<>();
		
		for (int i = 1; i < args.length-1; i=i+2) {
			
			String type=args[i].trim();
			String value=args[i+1].trim();
			
			switch (type) {
			case TYPE_PACKAGENAME:
				
			//修改包名
				isChangePackageName=true;
				System.out.println("PN:"+value);
				map.put(type, value);
				break;
				
			case TYPE_APPNAME:
			//修改游戏名
				isChangeAPPName=true;
				System.out.println("AN:"+value);
				map.put(type, value);
				break;
			//修改版本号
				
			case TYPE_VERSIONCODE:
				
				isChangeVersionCode=true;
				System.out.println("VC:"+value);
				map.put(type, value);
				break;
			//修改版本名
				
			case TYPE_VERSIONNAME:
				
				isChangeVersionName=true;
				System.out.println("VN:"+value);
				map.put(type, value);
				break;
				
			case TYPE_ICON:
				
			//修改icon
				isChangeICON=true;
				System.out.println("ICON:"+value);
				map.put(type, value);
				break;
				
			//修改gameid
			case TYPE_GAMEID:
				isChangegGameId=true;
				System.out.println("gameId:"+value);
				map.put(type, value);
				break;
			}
		}
		return map;
	}
	
}
