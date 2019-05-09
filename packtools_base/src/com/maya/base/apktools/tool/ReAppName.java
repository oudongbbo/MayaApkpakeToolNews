package com.maya.base.apktools.tool;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.maya.base.apktools.complier.ApkBuild;
import com.maya.base.apktools.complier.ApkDecode;
import com.maya.base.utils.FileUtil;


public class ReAppName {

    /**
     * 1.反编译 2.修改游戏名 3.回编译、处理文件 4.删除反编译后的残留文件
     */
    private String apkSourcePath;
    private String apkSouceName;// apk文件名
    private String apkDecodePath;// apk反编译路径
    private String appNameNew;// apk新游戏名

    private String apktoolPath;

    public ReAppName() {
    }

    public void setApktoolPath(String apktoolPath) {
        this.apktoolPath = apktoolPath;
    }

    /**
     * @param apkPath
     * @param appName
     */
    public void ChangeAppName(String apkPath, String appName) {

        apkSourcePath = apkPath;
        appNameNew = appName;

        if (apktoolPath == null || !"".equals(apktoolPath)) {
            System.out.println("程序没有设定apktool路径，无法继续");
            return;
        }

        if (apkSourcePath == null || "".equals(apkSourcePath)) {
            System.out.println("apk路径为空");
            return;
        } else if (!apkSourcePath.endsWith(".apk")) {
            System.out.println("不是一个apk文件");
            return;
        }

        if (appNameNew == null || "".equals(appNameNew)) {
            System.out.println("app名为空");
            return;
        }

        File sourceFile = new File(apkSourcePath);
        if (!sourceFile.exists()) {
            System.out.println("apk源文件夹不存在");
            return;
        } else {
            apkSouceName = sourceFile.getName();
            apkDecodePath = apkSourcePath.substring(0, apkSourcePath.lastIndexOf("."));
        }

        run(apkSourcePath, appNameNew);
    }

    public void run(String apkSourcePath, String appName) {

        System.out.println("souceName:" + apkSouceName);
        System.out.println("decodePath:" + apkDecodePath);
        System.out.println("appNameNew:" + appNameNew);

        decode();// 反编译

        work(apkSourcePath, appName);// 修改游戏名

        build();// 回编译、处理文件

        delete();// 删除反编译后的残留文件
    }

    private void decode() {
        ApkDecode apkDecode = new ApkDecode(apktoolPath);
        apkDecode.decode(apkSourcePath, apkDecodePath);
    }

    private void build() {

        System.out.println("-->回编译编译开始<---");

        ApkBuild builder = new ApkBuild(apktoolPath);
        builder.build(apkDecodePath);

        String savePath = new File(apkDecodePath).getParentFile().getAbsolutePath();
        String distPath = apkDecodePath + File.separator + "dist" + File.separator;

        File distFile = new File(distPath + apkSouceName);
        File targetFile = new File(savePath + File.separator + appNameNew + "_" + apkSouceName);
        FileUtil.copyFile(distFile, targetFile);

        System.out.println("-->distFile=" + distFile.getAbsolutePath()
                + "--targetFile=" + targetFile.getAbsolutePath() + "<---");

        FileUtil.copyFile(distFile, targetFile);

        System.out.println("-->回编译编译完成<---");
    }

    private void delete() {
        System.out.println("删除反编译目录");
        FileUtil.delDir(new File(apkDecodePath));
    }

    /**
     * @param decodePath
     * @param newAppName
     */
    public void work(String decodePath, String newAppName) {

        System.out.println("-->修改App名称开始<---");

        String manifestXml = decodePath + File.separator + "AndroidManifest.xml";
        System.out.println("manifestXml:" + manifestXml);

        List<String> keys = handleManifest(manifestXml, newAppName);

        System.out.println("keys=" + keys.size() + keys.toString());

        System.out.println("替换valuse....");

        replaceAppNameInValues(decodePath, keys, newAppName);

    }

    public List<String> handleManifest(String xml, String newName) {

        List<String> nameKeys = new ArrayList<String>();
        BufferedReader br = null;
        String line = null;
        StringBuffer manifest = new StringBuffer();

        try {
            br = new BufferedReader(new InputStreamReader(new FileInputStream(xml), "UTF-8"));

            while ((line = br.readLine()) != null) {

                if (line.contains("android:label=")) {
                    Pattern p = Pattern.compile("android:label=\"(.*?)\"");
                    Matcher m = p.matcher(line);
                    m.find();
                    String label = m.group(1);

                    System.out.println("label:" + label);

                    if (label.contains("@string")) {
                        String[] array = label.split("/");
                        nameKeys.add(array[1]);
                        System.out.println("array:" + array[1]);
                    }
//					line = line.replaceAll(label, newName);
                    line = line.replaceAll("android:label=\"" + label + "\"", "android:label=\"" + newName + "\"");
                    System.out.println("line:" + line);
                }
                manifest.append(line);
                manifest.append(System.getProperty("line.separator"));
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

        FileUtil.write(xml, manifest.toString());

        return nameKeys;
    }

    public void replaceAppNameInValues(String decodePath, List<String> keys, String newName) {
        if (keys != null && keys.size() > 0) {

            File resFile = new File(decodePath + File.separator + "res" + File.separator);
            File[] resFiles = resFile.listFiles();
            if (resFiles != null && resFiles.length > 0) {
                for (File file : resFiles) {
                    //遍历所有values开头的文件夹
                    if (file.getName().startsWith("values")) {

                        String path = file.getAbsolutePath() + File.separator + "strings.xml";

                        File stringsfile1 = new File("path");
                        if (!stringsfile1.exists()) {
                            return;
                        }

                        System.out.println("当前处理的文件是：" + path);

                        replaceAppNameInStrings(path, keys, newName);
                    }
                }
            }
        } else {
            return;
        }

    }

    private void replaceAppNameInStrings(String path, List<String> keys, String newAppName) {

        System.out.println("开始处理：" + path);
        //1.处理重复的Keys
        List<String> newKeys = new ArrayList<String>();
        newKeys = clearSameKeys(keys);
        //2.读取文件并处理游戏
        String strings = FileUtil.read(path);

        //3.替换游戏名
        for (String keyname : newKeys) {
            if (strings.contains(keyname)) {
                //如果存在才去查找
                Pattern p = Pattern.compile("<string name=\"" + keyname + "\">(.*?)<");
                Matcher m = p.matcher(strings);

                try {
                    String keyValue = m.group(1);
                    if (!keyValue.equals(newAppName)) {
                        strings = strings.replaceAll(">" + keyValue + "<", ">" + newAppName + "<");
                    }
                } catch (Exception e) {
                    return;
                }
                m.find();
            } else {
                //
                System.out.println("当前文件不存在此键值对：" + keyname);
                return;
            }


        }
        FileUtil.write(path, strings);
    }

    /**
     * @param keys
     * @return
     */
    private List<String> clearSameKeys(List<String> keys) {
        HashSet<String> set = new HashSet<String>(keys);
        keys.clear();
        keys.addAll(set);
        return keys;
    }
}
