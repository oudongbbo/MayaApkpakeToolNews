import com.maya.packtools.utils.encrypt.ZipUtil;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class ZipMain {

	public static final String KEY = "maya.com";

	public static final String ZIP = "0";
	public static final String UNZIP = "1";

	public static void main(String[] args) {

		 String type = args[0];
		 String content = args[1];
		 System.out.println("   type="+type);
		 System.out.println("content="+content);
		 zipOption(type, content);
//		String data = "1234";
//		System.out.println(Md5(data));
	}

	public static String zipOption(String type,String content){
		
		String result = "";

		if (ZIP.equals(type)) {
			// 加密
			result = encodeSpecial(content, KEY);
		} else if (UNZIP.equals(type)) {
			// 解密
			result = decodeSpecial(content, KEY);
		}

		System.out.println("输入:" + content);
		System.out.println("类型:" + (Integer.parseInt(type) == 0 ? "加密" : "解密"));
		System.out.println("输出:" + result);
		
		return result;
	}
	
	public static String encodeSpecial(String content, String key) {
		String encode = ZipUtil.Encode(content, key);
		encode = encode.replaceAll("=", "");
		encode = encode.replaceAll("/", "_");
		encode = encode.replaceAll("\\+", "-");
		return encode;
	}

	public static String decodeSpecial(String content, String key) {
		content = content.replaceAll("_", "/");
		content = content.replaceAll("-", "\\+");
		return ZipUtil.Decode(content, key);
	}

	public static String encodeSpecial(String content) {
		return encodeSpecial(content, KEY);
	}

	public static String decodeSpecial(String content) {
		return decodeSpecial(content, KEY);
	}

	public static String Md5(String string) {
		byte[] hash;
		try {
			hash = MessageDigest.getInstance("MD5").digest(string.getBytes("UTF-8"));
		} catch (NoSuchAlgorithmException e) {
			throw new RuntimeException("Huh, MD5 should be supported?", e);
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException("Huh, UTF-8 should be supported?", e);
		}

		StringBuilder hex = new StringBuilder(hash.length * 2);
		for (byte b : hash) {
			if ((b & 0xFF) < 0x10)
				hex.append("0");
			hex.append(Integer.toHexString(b & 0xFF));
		}
		return hex.toString();
	}

}
