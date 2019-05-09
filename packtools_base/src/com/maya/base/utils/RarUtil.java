package com.maya.base.utils;

import java.io.File;

public class RarUtil {

	public static String rarPathAtWindows = "C:\\WinRAR\\WinRAR.exe";
	
	public static boolean delete(String source, String del) {

		String delcmd =  rarPathAtWindows+ " -ibck -inul d " + source + "  " + del;

		try {
			Process proc = Runtime.getRuntime().exec(delcmd);
			StreamController.printStream(proc);

			if (proc.waitFor() != 0) {
					return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println();
		}
		return true;
	}

	public static boolean deleteFile(String source, String deletePath) {

		String delcmd;
		if (SystemUtil.isWindowsOS()) {
			delcmd = rarPathAtWindows + " -ibck -inul d " + source + "  " + deletePath;
		} else {
			delcmd = " zip  -d " + source + " " + deletePath;
		}

		System.out.println("删除文件" + delcmd);

		try {
			Process proc = Runtime.getRuntime().exec(delcmd);

			StreamController.printStream(proc);

			if (proc.waitFor() != 0) {
				System.out.println(deletePath + "删除失败");
				return false;
			} else {
				System.out.println(deletePath + "删除成功");
			}

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	
	public static boolean copyFile(String sourcePath,String targetPath){
		StringBuilder sb = new StringBuilder();
		if (SystemUtil.isWindowsOS()) {
			sb.append(" cmd.exe /c copy ");
		}else {
			sb.append(" cp -f -r ");
		}
		
		sb.append(sourcePath + " "+ targetPath);
		System.out.println("目标文件路径:"+targetPath);
		
		try {
			Process process = Runtime.getRuntime().exec(sb.toString());
			StreamController.printStream(process);
			if (process.waitFor() != 0) {
				System.out.println("复制失败");
			}
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	/**
	 * 向压缩文件中添加新文件
	 * @param rarPath
	 * @param newFilePath
	 * @return
	 */
	public static boolean addNewFile2Rar(String rarPath, String newFilePath) {

		if (SystemUtil.isWindowsOS()) {
			addNewFile2RarAtWin(rarPath, newFilePath);
		} else {
			addNewFile2RarAtLinux(rarPath, newFilePath);
		}

		return true;
	}

	public static boolean addNewFile2RarAtWin(String rarPath, String newFilePath) {
		String cmd = rarPathAtWindows + " a -ep1 "
				+ rarPath + "  " + newFilePath;
		try {
			Process proc = Runtime.getRuntime().exec(cmd);
			StreamController.printStream(proc);
			if (proc.waitFor() != 0) {
				if (proc.exitValue() == 0) {
					System.out.println("windows下新增文件");
					return false;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	/**
	 * @param rarPath
	 * @param addFilePath
	 * @return
	 */
	public static boolean addNewFile2RarAtLinux(String rarPath,
			String addFilePath) {
		File rarFile = new File(rarPath);
		File addFile = new File(addFilePath);
		if (rarFile.exists() && addFile.exists()) {
			String rarParent = rarFile.getParent();
			String newFileName = addFile.getName();
			try {
				// cp -f -r ./A ./B
				//1.先移动到同目录下，apk的父目录下
				String cmd_move ="";
				if (rarParent.equals(addFile.getParent())) {
					cmd_move = "";
				}else {
					cmd_move = "  cp -R -f " + addFilePath + "   "+ rarParent + File.separator + "";
				}
				//2.cd到apk的路径下
				String cmd_cd = "cd " + rarParent + File.separator;
				//3.添加文件的命令
				String cmd_rar = "zip -r " + rarPath + "  " + newFileName;
				String cmd;
				if ("".equals(cmd_move)) {
					cmd =  cmd_cd + " && pwd &&  "+ cmd_rar;
				}else {
					cmd = cmd_move + " && " + cmd_cd + " && pwd &&  "
							+ cmd_rar;
				}

				System.out.println("linux复制文件命令:\n " + cmd);

				String[] command = { "/bin/sh", "-c", cmd };

				Process proc = Runtime.getRuntime().exec(command);

				StreamController.printStream(proc);

				if (proc.waitFor() != 0) {
					if (proc.exitValue() == 0) {
						System.out.println("linux 下 复制文件失败");
						return false;
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
				return false;
			}
		}else {
			System.out.println(">------------apk文件不存在，或者新添加文件不存在---------------<");
		}

		return true;
	}

	/**
	 * 解压缩文件
	 * @param apk
	 * @param rarsource
	 * @param direct
	 * @return
	 */
	public static boolean unRar(String apk, String rarsource, String direct) {

		String cmd = null;

		if (SystemUtil.isWindowsOS()) {
			cmd = rarPathAtWindows + " e " + apk
					+ " " + rarsource + " " + direct;
		} else {
			cmd = "unzip -C -j " + apk + " " + rarsource + " -d " + direct;
		}
		try {
			Process proc = Runtime.getRuntime().exec(cmd);
			StreamController.printStream(proc);
			if (proc.waitFor() != 0) {
				if (proc.exitValue() == 0) {
					return false;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}

	public static boolean unRarAll(String apk, String direct) {
		File file = new File(direct);
		if (!file.exists()) {
			file.mkdirs();
		}
		String cmd = rarPathAtWindows
				+ " x -t -o-p " + apk + " " + direct;
		try {
			Process proc = Runtime.getRuntime().exec(cmd);
			StreamController.printStream(proc);
			if (proc.waitFor() != 0) {
				if (proc.exitValue() == 0) {
					return false;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}

	// public static void main(String[] args) {
	// }

	public static boolean unZipApkFile(String apkPath, String rarsource,
			String direct) {
		String cmd = "unzip -C -o " + apkPath + " " + rarsource + " -d "
				+ direct;
		try {
			Process proc = Runtime.getRuntime().exec(cmd);
			StreamController.printStream(proc);
			if (proc.waitFor() != 0) {
				if (proc.exitValue() == 0) {
					return false;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}
	
	/**
	 * 将同批推广包进行压缩
	 * @param sourcePath 生成的apk文件夹
	 * @return
	 */
	public static boolean allFinalApkRar(String sourcePath){
		StringBuilder sb = new StringBuilder();
		if (SystemUtil.isWindowsOS()) {
			sb.append(rarPathAtWindows)
			.append(" a -ep ")
			.append(sourcePath)
			.append(".zip")
			.append(" ")
			.append(sourcePath);
		}else {
			sb.append("zip ")
			.append("-r -j ")
			.append(sourcePath)
			.append(".zip")
			.append(" ")
			.append(sourcePath);
		}
		System.out.println("cmd:"+sb.toString());
		
		try {
			Process process = Runtime.getRuntime().exec(sb.toString());
			StreamController.printStream(process);
			if (process.waitFor() != 0) {
				System.out.println("压缩失败");
			}
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
