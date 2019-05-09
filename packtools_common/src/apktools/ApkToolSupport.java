package apktools;

import java.util.HashMap;

public class ApkToolSupport {

	public static final String TYPE_ICON = "-i";
	public static final String TYPE_VERSIONCODE = "-vc";
	public static final String TYPE_VERSIONNAME = "-vn";
	public static final String TYPE_APPNAME = "-an";
	public static final String TYPE_PACKAGENAME = "-pn";
	public static final String TYPE_GAMEID = "-gid";
	public static final String TYPE_CCHID = "-pid";
	public static final String TYPE_MDID = "-mid";
	public static final String TYPE_OUTPUT = "-o";

	public static boolean isChangePackageName;
	public static boolean isChangeAPPName;
	public static boolean isChangeVersionCode;
	public static boolean isChangeVersionName;
	public static boolean isChangeICON;
	public static boolean isChangegGameId;
	public static boolean isChangegCchId;
	public static boolean isChangegMdId;
	public static boolean hasOutputPath;

	public static HashMap<String, String> judgeInput(String[] args) {

		HashMap<String, String> map = new HashMap<>();

		for (int i = 1; i < args.length - 1; i = i + 2) {

			String type = args[i].trim();
			String value = args[i + 1].trim();

			switch (type) {
			case TYPE_PACKAGENAME:

				// 修改包名
				isChangePackageName = true;
				System.out.println("PN:" + value);
				map.put(type, value);
				break;

			case TYPE_APPNAME:
				// 修改游戏名
				isChangeAPPName = true;
				System.out.println("AN:" + value);
				map.put(type, value);
				break;

			case TYPE_VERSIONCODE:
				// 修改版本号
				isChangeVersionCode = true;
				System.out.println("VC:" + value);
				map.put(type, value);
				break;

			case TYPE_VERSIONNAME:
				// 修改版本名
				isChangeVersionName = true;
				System.out.println("VN:" + value);
				map.put(type, value);
				break;

			case TYPE_ICON:
				// 修改icon
				isChangeICON = true;
				System.out.println("ICON:" + value);
				map.put(type, value);
				break;

			case TYPE_GAMEID:
				// 修改gid
				isChangegGameId = true;
				System.out.println("gid:" + value);
				map.put(type, value);
				break;
			case TYPE_CCHID:
				// 修改pid
				isChangegCchId = true;
				System.out.println("pid:" + value);
				map.put(type, value);
				break;
			case TYPE_MDID:
				// 修改mid
				isChangegMdId = true;
				System.out.println("mid:" + value);
				map.put(type, value);
				break;

			case TYPE_OUTPUT:
				// 修改mid
				hasOutputPath = true;
				System.out.println("output:" + value);
				map.put(type, value);
				break;
			}
		}
		return map;
	}

}
