import com.maya.base.utils.FileUtil;

import java.io.File;

public class ReplaceFileName {

	
	public static void main(String[] args) throws Exception {
		
		String filePath = args[0];
		String content = args[1];
		String replacecontent = args[2];
		
		System.out.println("1.filePath="+filePath);
		System.out.println("2.content="+content);
		System.out.println("3.replacecontent="+replacecontent);
		
		FileUtil.replaceFileName(new File(filePath), content, replacecontent);
		
	}
	
	
	
}
