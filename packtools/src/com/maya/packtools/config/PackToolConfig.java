package com.maya.packtools.config;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class PackToolConfig {
	
	private static PackToolConfig config;
	public String rarPath = "C:\\WinRAR\\WinRAR.exe";
	public String zipalign = "";
	public String jarsignerAtLinux = "";
	public String zipalignAtLinux = "";
	public String aaptAtLinux = "";
	public boolean isTest = false;
	
	private PackToolConfig() {
		
		getLocalProperty();
		
	}
	
	public synchronized static PackToolConfig getInstance(){
		
		
		if (config == null) {
			config = new PackToolConfig();
		}
		
		return config;
	}
	
	
	public void getLocalProperty() {
		Properties prop = new Properties();
		FileInputStream fis;
		try {
			fis = new FileInputStream(Common.TOOLBOX_LOCAL_CONFIG);
			prop.load(fis);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		rarPath = prop.getProperty("rarpath");
		zipalign = prop.getProperty("zipalign");
		//
		jarsignerAtLinux = prop.getProperty("jarsignerAtLinux");
		zipalignAtLinux = prop.getProperty("zipalignAtLinux");
		aaptAtLinux = prop.getProperty("aaptAtLinux");
		
	}

}
