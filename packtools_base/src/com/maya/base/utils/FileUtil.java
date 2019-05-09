package com.maya.base.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class FileUtil {


    public static boolean copyFile(File sourceFile, File targetFile) {

        try {
            FileInputStream input = new FileInputStream(sourceFile);
            BufferedInputStream inBuff = new BufferedInputStream(input);

            FileOutputStream output = new FileOutputStream(targetFile);
            BufferedOutputStream outBuff = new BufferedOutputStream(output);

            byte[] b = new byte[1024 * 5];
            int len;
            while ((len = inBuff.read(b)) != -1) {
                outBuff.write(b, 0, len);
            }
            outBuff.flush();

            inBuff.close();
            outBuff.close();
            output.close();
            input.close();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

        return true;
    }

    public static void copyDirectiory(String sourceDir, String targetDir) {

        LogUtil.showLog("来自于：" + sourceDir);
        LogUtil.showLog("复制到：" + targetDir);

        if (SystemUtil.getOSName() == SystemUtil.IS_LINUX_OS) {
            copyDirectioryInLinux(sourceDir, targetDir);
        } else {
            copyDirectioryNormal(sourceDir, targetDir);
        }

    }

    public static void copyDirectioryNormal(String sourceDir, String targetDir) {
        (new File(targetDir)).mkdirs();
        File[] files = (new File(sourceDir)).listFiles();
        for (int i = 0; i < files.length; i++) {
            if (files[i].isFile()) {
                File sourceFile = files[i];
                String filename = files[i].getName();
                File targetFile = new File(
                        new File(targetDir).getAbsolutePath() + File.separator + filename);
                copyFile(sourceFile, targetFile);
            }
            if (files[i].isDirectory()) {
                String dir1 = sourceDir + File.separator + files[i].getName();
                String dir2 = targetDir + File.separator + files[i].getName();
                copyDirectioryNormal(dir1, dir2);
            }
        }
    }

    public static void copyDirectioryInLinux(String sourceDir, String targetDir) {

        (new File(targetDir)).mkdirs();
        File[] file = (new File(sourceDir)).listFiles();
        for (int i = 0; i < file.length; i++) {
            if (file[i].isFile()) {
                File sourceFile = file[i];
                String filename = file[i].getName();//.toLowerCase();
                String filename2 = file[i].getName();//.toLowerCase();
                String filename_lowercase = filename2.toLowerCase();
                File targetFile = new File(
                        new File(targetDir).getAbsolutePath() + File.separator
                                + filename);
                File targetFile_lowercase = new File(
                        new File(targetDir).getAbsolutePath() + File.separator
                                + filename_lowercase);

                if (filename != null && !"".equals(filename) && filename_lowercase != null && !"".equals(filename_lowercase)) {
                    if (!filename.equals(filename_lowercase)) {
                        if (targetFile_lowercase.exists()) {
                            LogUtil.showLog("源文件：" + sourceFile.getAbsolutePath());
                            LogUtil.showLog("目标文件：" + targetFile.getAbsolutePath());
                            LogUtil.showLog("目标文件，小写：" + targetFile_lowercase.getAbsolutePath());
                            targetFile_lowercase.delete();
                        }
                    }
                }

                copyFile(sourceFile, targetFile);
            }
            if (file[i].isDirectory()) {
                String dir1 = sourceDir + File.separator + file[i].getName();
                String dir2 = targetDir + File.separator + file[i].getName();
                copyDirectioryInLinux(dir1, dir2);
            }
        }
    }

    /**
     * @param filePath
     * @return
     */
    public static String read(String filePath) {
        BufferedReader bufferedReader = null;
        String line = "";
        StringBuffer buf = new StringBuffer();

        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "UTF-8"));

            while ((line = bufferedReader.readLine()) != null) {
                buf.append(line);
                buf.append(System.getProperty("line.separator"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    bufferedReader = null;
                }
            }
        }

        return buf.toString();
    }

    /**
     * @param filePath
     * @param keyWords
     * @return
     */
    public static String readExceptCotent(String filePath,String[] keyWords) {
        BufferedReader bufferedReader = null;
        String line = "";
        StringBuffer buf = new StringBuffer();

        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "UTF-8"));

            while ((line = bufferedReader.readLine()) != null) {

                boolean needKeepOut = false;
                for (int i = 0; i < keyWords.length; i++) {
                    if (line.contains(keyWords[i])){
                        //找到关键字，就需要屏蔽掉
                        needKeepOut = true;
                        break;
                    }

                }
                if (needKeepOut){

                    //屏蔽掉相关字眼
                }else{

                    //添加进来
                    buf.append(line);
                    buf.append(System.getProperty("line.separator"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    bufferedReader = null;
                }
            }
        }

        return buf.toString();
    }


    /**
     * @param filePath
     * @param content
     */
    public static void write(String filePath, String content) {
        BufferedWriter bw = null;

        try {
            //bw = new BufferedWriter(new FileWriter(filePath));
            bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath), "UTF-8"));
            bw.write(content);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (bw != null) {
                try {
                    bw.close();
                } catch (IOException e) {
                    bw = null;
                }
            }
        }
    }

    private static void listFolder(String path, String sStr, String xStr) {

        String ssStr = sStr.replaceAll("\\.", "/");
        String xxStr = xStr.replaceAll("\\.", "/");

        File file = new File(path);
        File[] list = file.listFiles();
        for (int i = 0; i < list.length; i++) {
            if (list[i].isDirectory())
                listFolder(list[i].getPath(), sStr, xStr);
            else {
                String filePath = list[i].getPath();
                String content = read(filePath);
                content = content.replaceAll(sStr, xStr);
                content = content.replaceAll(ssStr, xxStr);
                write(filePath, content);
                // LogUtil.showLog(filePath+" OK");
            }
        }
    }

    public static void delDir(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
            } else if (file.isDirectory()) {
                File files[] = file.listFiles();
                for (int i = 0; i < files.length; i++) {
                    delDir(files[i]);
                }
            }
            file.delete();
        } else {
            LogUtil.showLog("要删除的文件不存在" + '\n');
        }
    }

    public static void delFileUnderDir(File parentFile,String delFileName){

        File[] files = parentFile.listFiles();
        for (int i = 0; i <files.length; i++) {
            String fileName = files[i].getName();

            if (fileName.equals(delFileName)) {
                delDir(files[i]);
            }else {
                if (files[i].isDirectory()){
                    delFileUnderDir(files[i],delFileName);
                }
            }
        }
    }

    public static void replaceFileContent(File file, final String content, final String replacement) {

        String fileContent = FileUtil.read(file.getAbsolutePath());

        if (fileContent.contains(content)) {
            LogUtil.showLog("当前文件" + file.getAbsolutePath() + "存在 \n" + content + "替换为:" + replacement);

            fileContent = fileContent.replaceAll(content, replacement);
            FileUtil.write(file.getAbsolutePath(), fileContent);
        }
    }


    public static void replaceFileContentUnderDir(File dirFile, final String content, final String replacement) {

        File[] files = dirFile.listFiles();

        for (int i = 0; i < files.length; i++) {
            if (files[i].isDirectory()) {
                replaceFileContentUnderDir(files[i], content, replacement);
            } else {
                String fileContent = FileUtil.read(files[i].getAbsolutePath());

                if (fileContent.contains(content)) {
                    LogUtil.showLog("当前文件" + files[i].getAbsolutePath() + "存在 \n" + content + "替换为:" + replacement);

                    fileContent = fileContent.replaceAll(content, replacement);
                    FileUtil.write(files[i].getAbsolutePath(), fileContent);
                }

            }
        }

    }

    public static void replaceFileContentUnderDir(File dirFile, HashMap<String, String> map) {

        File[] files = dirFile.listFiles();

        for (int i = 0; i < files.length; i++) {
            if (files[i].isDirectory()) {
                replaceFileContentUnderDir(files[i], map);
            } else {
                String fileContent = FileUtil.read(files[i].getAbsolutePath());

                for (Map.Entry<String, String> entry : map.entrySet()) {

                    LogUtil.showLog("Key = " + entry.getKey() + ", Value = " + entry.getValue());

                    String content = entry.getKey();
                    String replacement = entry.getValue();
                    boolean modify = false;

                    if (fileContent.contains(content)) {

                        LogUtil.showLog("当前文件" + files[i].getAbsolutePath() + "\n存在 " + content + "替换为:" + replacement);

                        fileContent = fileContent.replaceAll(content, replacement);
                        modify = true;
                    }
                    if (modify) {
                        //有修改内容，才需要重新写入文件
                        FileUtil.write(files[i].getAbsolutePath(), fileContent);
                    }
                }


            }
        }

    }

    //重命名，支持文件和文件夹
    public static void renameFile(String oldPath, String newPath) {

        LogUtil.showLog("重命名文件或者文件夹" + oldPath + "到" + newPath);

        if (!oldPath.equals(newPath)) {

            File oldfile = new File(oldPath);
            File newfile = new File(newPath);

            if (!oldfile.exists()) {
                LogUtil.showLog("原文件不存在");
                return;
            }

            if (newfile.exists()) {
                //已经存在就删除旧文件
                FileUtil.delDir(newfile);
            }
            //重命名
            oldfile.renameTo(newfile);


        } else {
            LogUtil.showLog("修改的文件名一致，无法替换...");
        }

    }

    public static void replaceFileName(File file, final String content, final String replacement) throws IOException {

        LogUtil.showLog("replaceFileName");

        File[] files = file.listFiles();

        for (int i = 0; i < files.length; i++) {

            if (files[i].isDirectory()) {

                LogUtil.showLog("isDirectory");

                replaceFileName(files[i], content, replacement);

            } else {

                LogUtil.showLog("isFile");

                String filename = files[i].getName();
                String filePath = files[i].getParent();

                LogUtil.showLog("filename=" + filename);

                if (filename.contains(content)) {

                    LogUtil.showLog("1.Find a file " + filename + " contains " + content);

                    String newFilePath = filePath + File.separator + filename.replaceAll(content, replacement);

                    LogUtil.showLog("2.New File path =" + newFilePath);

//                    File newFile = new File(newFilePath);
//
//                    if (!newFile.exists()) {
//                        newFile.createNewFile();
//                    }
//
//                    copyFile(files[i], newFile);
//
//                    files[i].delete();

                    renameFile(files[i].getAbsolutePath(), newFilePath);
                }
            }
        }

    }

    public static void replaceDirAndFileName(File dirFile, boolean isEqual, HashMap<String, String> map) {
        {
            LogUtil.showLog("------------------------------");
            LogUtil.showLog("----通过map，替换当前文件夹中的文件名和文件夹名称");
            LogUtil.showLog("----文件夹：" + dirFile.getName());
            LogUtil.showLog("----文件夹：" + dirFile.getAbsolutePath());
            LogUtil.showLog("------------------------------");
            LogUtil.showLog("");

            File[] files = dirFile.listFiles();

            for (int i = 0; i <files.length; i++) {{

                File tempFile =files[i];

                String fileName = tempFile.getName();
                String fileParentPath = tempFile.getParent();

                LogUtil.showLog("当前是第【"+(i+1)+"】个文件");
                LogUtil.showLog("当前文件名："+fileName);
                LogUtil.showLog("当前文件路径："+tempFile.getAbsolutePath());

                for (Map.Entry<String, String> entry : map.entrySet()) {


                    String content = entry.getKey();
                    String replacement = entry.getValue();

                    LogUtil.showLog("--Key = " + content + ", Value = " + replacement);
                    
                    if (isEqual){
                        //表示，键值对的键和名称要完全匹配
                        LogUtil.showLog("1当前匹配全部文件名");
                        if (fileName.equals(content)) {
                            //当前文件重命名
                            String newFilePath = fileParentPath + File.separator + fileName.replaceFirst(content, replacement);
                            File newFile = new File(newFilePath);

                            LogUtil.showLog("1找到文件：从" + fileName + "替换为：" + newFile.getName());

                            tempFile.renameTo(newFile);

                            //如果是文件夹
                            if (newFile.isDirectory()) {
                                LogUtil.showLog("1匹配到文件名，并修改，当前是文件夹，继续寻找");
                                replaceDirAndFileName(newFile, isEqual, map);
                            }
                        } else {
                            //当前文件不匹配，则判断是否是文件夹，如为文件夹，则递归寻找
                            //如果是文件夹
                            LogUtil.showLog("当前文件名："+fileName);
                            LogUtil.showLog("当前文件名："+tempFile.getName());
                            LogUtil.showLog("当前文件路径："+tempFile.getAbsolutePath());
                            if (tempFile.isDirectory()) {
                                LogUtil.showLog("1未匹配到文件名，当前文件是文件夹，继续寻找");
                                replaceDirAndFileName(tempFile, isEqual, map);
                            }else {
                                LogUtil.showLog("1未匹配到文件名，当前文件,结束返回");
                            }

                        }
                    }else{
                        //模糊匹配即可
                        LogUtil.showLog("2当前模糊匹配文件名");

                        if (fileName.contains(content)) {
                            //当前文件重命名
                            String newFilePath = fileParentPath + File.separator + fileName.replaceFirst(content, replacement);
                            File newFile = new File(newFilePath);

                            LogUtil.showLog("2找到文件：从" + fileName + "替换为：" + newFile.getName());

                            tempFile.renameTo(newFile);

                            //如果是文件夹
                            if (newFile.isDirectory()) {
                                LogUtil.showLog("2匹配到文件名，并修改，当前是文件夹，继续寻找");
                                replaceDirAndFileName(newFile, isEqual, map);
                            }
                        } else {
                            //当前文件不匹配，则判断是否是文件夹，如为文件夹，则递归寻找
                            //如果是文件夹
                            if (tempFile.isDirectory()) {
                                LogUtil.showLog("2未匹配到文件名，当前文件是文件夹，继续寻找");
                                replaceDirAndFileName(tempFile, isEqual, map);
                            }

                        }
                    }


                }
            }

            }

        }
    }

    public static void replaceDirAndFileName(File file, final String content, final String replacement) {
        {
            LogUtil.showLog("------------------------------");
            LogUtil.showLog("----替换当前文件夹中的文件名和文件夹名称");
            LogUtil.showLog("----文件夹：" + file.getName());
            LogUtil.showLog("----把此字段：" + content + "替换为：" + replacement);
            LogUtil.showLog("------------------------------");
            LogUtil.showLog("");

            File[] files = file.listFiles();

            for (File tempFile : files) {

                String fileName = tempFile.getName();
                String fileParentPath = tempFile.getParent();

                if (fileName.contains(content)) {
                    //当前文件重命名
                    String newFilePath = fileParentPath + File.separator + fileName.replaceFirst(content, replacement);
                    File newFile = new File(newFilePath);

                    LogUtil.showLog("----找到文件：从" + fileName + "替换为：" + newFile.getName());

                    tempFile.renameTo(newFile);
//                    renameFile(tempFile.getAbsolutePath(), newFilePath);

                    //如果是文件夹
                    if (newFile.isDirectory()) {
                        LogUtil.showLog("当前文件是文件夹，继续寻找");
                        replaceDirAndFileName(newFile, content, replacement);
                    }
                } else {
                    //当前文件不匹配，则判断是否是文件夹，如为文件夹，则递归寻找
                    //如果是文件夹
                    if (tempFile.isDirectory()) {
                        LogUtil.showLog("当前文件是文件夹，继续寻找");
                        replaceDirAndFileName(tempFile, content, replacement);
                    }

                }

            }

        }
    }

    public static void replaceFileContentUnderDir(File file, final String content, final String replacement, FileFilter filter) {

        if (!file.exists()) {

            LogUtil.showLog("������" + file.getAbsolutePath() + "----- ����������");
            return;
        }

        File[] files = file.listFiles(filter);
        for (int i = 0; i < files.length; i++) {

//        	LogUtil.showLog("-----readFile:"+files[i].getAbsolutePath()+"------");

            if (files[i].isDirectory()) {
                replaceFileContentUnderDir(files[i], content, replacement, filter);
            } else {
                String sContent = FileUtil.read(files[i].getAbsolutePath());

                if (sContent.contains(content)) {
                    LogUtil.showLog("�ҵ��滻����Ϊ��" + content + "�� ���ļ�:" + files[i].getName());

                    sContent = sContent.replaceAll(content, replacement);
                    FileUtil.write(files[i].getAbsolutePath(), sContent);
                }

            }
        }

    }

    /**
     * @param filePath
     */
    public static void delPayFiles(String filePath) {
        File root = new File(filePath);
        File[] files = root.listFiles();
        for (File file : files) {
            if (file.isDirectory()) {

                delPayFiles(file.getAbsolutePath());

            } else {

            }
            if (file.getName().equals("alipay")
                    || file.getName().equals("unionpay")) {
                FileUtil.delDir(file);
            }
        }
    }


    public static void main(String[] args) {
        LogUtil.showLog("com.app.lo->" + getFilePathFrom("com.app.lo"));
    }

    /**
     * @param sdkplugin
     * @param prop
     * @param map
     */
    public static void replaceContentOfMetadata(String sdkplugin, Properties prop, Map<String, String> map) {

        String content = FileUtil.read(sdkplugin);

        Pattern p;
        Matcher m;
        String propKey = "";
        String propValue = "";
        Object[] mapValue = null;
        Object[] mapKey = null;

        if (map.keySet().toArray().length != 0) {

            mapValue = map.values().toArray();
            mapKey = map.keySet().toArray();
        }

        try {

            if (mapKey != null && mapValue != null) {

                for (int i = 0; i < map.size(); i++) {

                    propKey = mapKey[i].toString();
                    propValue = mapValue[i].toString();

                    p = Pattern.compile("<meta-data android:name=\"" + propValue + "\" android:value=\"(.*?)\"");
                    m = p.matcher(content);
                    m.find();
                    String key = m.group(1);

                    LogUtil.showLog("key=========" + key);

                    content = content.replaceAll("android:name=\"" + propValue + "\" android:value=\"" + key, "android:name=\"" + propValue + "\" android:value=\"" + prop.getProperty(propKey));

                    LogUtil.showLog(propKey + ">>>>>>>" + propValue + "-" + prop.getProperty(propKey));
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            LogUtil.showLog("" + e.toString());
        }

        FileUtil.write(sdkplugin, content);

    }


    public static List<String> replacePath(String filePath) {

        BufferedReader br = null;
        String line = null;
        StringBuffer buf = new StringBuffer();
        List listPath = new ArrayList<String>();

        File file_path = new File(filePath);

        if (!file_path.isFile()) {
            return null;
        }

        try {
            br = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "UTF-8"));

            while ((line = br.readLine()) != null) {
                buf.append(line);
                listPath.add(line);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // �ر���
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    br = null;
                }
            }
        }

        return listPath;
    }


    /**
     * 读取一行内容
     *
     * @param filePath 文件路径
     * @param content  当前行包含的字段
     * @return
     */
    public static String readLine(String filePath, String content) {

        if (content == null || "".equals(content)) {

            return null;
        }

        BufferedReader br = null;
        String line = null;

        try {
            br = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "UTF-8"));

            while ((line = br.readLine()) != null) {

                if (line.contains(content)) {

                    return line;
                }
            }

        } catch (Exception e) {

        } finally {

            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    br = null;
                }
            }
        }

        return line;
    }


    /**
     * 获取含有某个字段的所有行数
     *
     * @param filePath
     * @param content
     * @return
     */
    public static ArrayList<String> readAllLines(String filePath, String content) {

        if (content == null || "".equals(content)) {
            return null;
        }

        ArrayList<String> contentLines = new ArrayList<String>();
        BufferedReader br = null;
        String line = null;

        try {
            br = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "UTF-8"));

            while ((line = br.readLine()) != null) {
                if (line.contains(content)) {
                    contentLines.add(line);
                }

            }

        } catch (Exception e) {

        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    br = null;
                }
            }
        }

        return contentLines;
    }


    public static String getFilePathFrom(String name) {

        StringBuilder namePath = new StringBuilder();

        if (name != null && !"".equals(name) && name.contains(".")) {

            String[] names = name.split("\\.");


            for (int i = 0; i < names.length; i++) {

                LogUtil.showLog("��˳���������-name:" + names[i]);

                if (i == names.length - 1) {
                    namePath.append(names[i]);
                } else {
                    namePath.append(names[i] + File.separator);
                }
            }

            LogUtil.showLog(name + " �滻���·��Ϊ��" + namePath.toString());

            return namePath.toString();

        } else {
            LogUtil.showLog("\n\n����Ϊ�գ����߲�����\".\"���޷�ת����\n\n");
            return null;
        }

    }

    public static List<String> getFileList(String filePath, String name) {

        List<String> namePaths = new ArrayList<String>();

        File file = new File(filePath);

        if (file.exists()) {
            File[] files = file.listFiles();
            if (files.length > 1) {
                //文件大于1
                for (File tempFile : files) {
                    if (tempFile.isDirectory()) {
                        //继续查找，如果结果大于等于1，则加入上级list表
                        List<String> tempLists = getFileList(filePath, name);
                        if (tempLists.size() >= 1) {
                            namePaths.addAll(tempLists);
                        }
                    } else {
                        //匹配
                        String tempName = tempFile.getName();
                        if (name.equals(tempName)) {
                            //添加到表中
                            namePaths.add(tempFile.getAbsolutePath());
                        }
                    }
                }
            }
        }

        return namePaths;

    }

    //---------------------------------其他处理，未来要删除的---------------------------------------

    /**
     * 喜马拉雅FM渠道专用
     *
     * @param filePath
     * @return
     */
    public static String read(String filePath, String addContent) {
        BufferedReader br = null;
        String line = null;
        StringBuffer buf = new StringBuffer();
        int i = 0;

        try {
            br = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "UTF-8"));

            while ((line = br.readLine()) != null) {
                i = i + 1;

                if (line.trim().equals("<action android:name=\"android.intent.action.MAIN\"/>")) {
                    i = 20000;
                }

                if (i == 20003) {
                    buf.append(addContent).append(line).append(System.getProperty("line.separator"));
                } else {
                    buf.append(line);

                    buf.append(System.getProperty("line.separator"));
                }


                // }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    br = null;
                }
            }
        }

        return buf.toString();
    }

}
