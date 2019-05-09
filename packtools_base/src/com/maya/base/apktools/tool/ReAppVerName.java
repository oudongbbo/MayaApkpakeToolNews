package com.maya.base.apktools.tool;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.maya.base.utils.FileUtil;


public class ReAppVerName {

    public String apkSourcePath;
    public String apkSouceName;// apk文件名
    public String decodePath;// apk反编译路径
    public String newVersionName;//apk新版本名

    public void main(String[] args) {

    }

    public void changeAppVersionName(String apkPath, String versionName) {

        apkSourcePath = apkPath;
        newVersionName = versionName;

        if (apkPath == null || "".equals(apkPath)) {
            System.out.println("apk路径为空");
            return;
        } else if (!apkPath.endsWith(".apk")) {
            System.out.println("不是一个apk文件");
            return;
        }

        if (newVersionName == null || "".equals(newVersionName)) {
            System.out.println("版本名为空");
            return;
        }

        run(apkPath, newVersionName);
    }

    public void run(String apkSourcePath, String versionName) {

        File sourceFile = new File(apkSourcePath);
        if (!sourceFile.exists()) {
            System.out.println("apk源文件夹不存在");
            return;
        } else {
            apkSouceName = sourceFile.getName();
            decodePath = apkSourcePath.substring(0, apkSourcePath.lastIndexOf("."));
        }

        System.out.println("souceName:" + apkSouceName);
        System.out.println("decodePath:" + decodePath);
        System.out.println("appNameNew:" + versionName);

        decode();// 反编译

        work(decodePath, newVersionName);// 修改版本名

        build();// 回编译、处理文件

        delete();// 删除反编译后的残留文件
    }

    private void decode() {
//		ApkDecode.decode(apkSourcePath, decodePath);
    }

    private void build() {
        System.out.println("-->回编译编译开始<---");
//		ApkBuild.build(decodePath);

        String distPath = decodePath + File.separator + "dist" + File.separator;
        String savePath = new File(decodePath).getParentFile().getAbsolutePath();
        File distFile = new File(distPath + apkSouceName);
        File targetFile = new File(savePath + File.separator + newVersionName + "_" + apkSouceName);

        System.out.println("-->distFile=" + distFile.getAbsolutePath() + "--targetFile=" + targetFile.getAbsolutePath() + "<---");

        FileUtil.copyFile(distFile, targetFile);

        System.out.println("-->回编译编译完成<---");
    }

    private void delete() {
        System.out.println("---->删除反编译文件<--");
        FileUtil.delDir(new File(decodePath));
    }

    public void work(String decodePath, String verName) {

        System.out.println("-->修改版本名开始<---");

        //----------------------------------------------解析apktool.yml----------------------------------------------
        String apktoolyml = decodePath + File.separator + "apktool.yml";


        //高版本的apktool 需要屏蔽的字段有
        // "- assets/"  "- res/drawable"
        //- jpg
        //- png
        //
        String[] keywords = {"- assets/", "- res/drawable"};
        String apktoolymlContent = FileUtil.readExceptCotent(apktoolyml, keywords);

//		String apktoolymlContent = FileUtil.read(apktoolyml);
        System.out.println("apktoolyml:" + apktoolyml);
        System.out.println("获取到的apktool.yml内容:\n" + apktoolymlContent);

        if (apktoolymlContent.contains("versionName: '")) {
            // 正则找到versionName
            Pattern p = Pattern.compile("versionName: '(.*?)'");
            Matcher m = p.matcher(apktoolymlContent);
            m.find();
            //默认情况
            String oldversionName = m.group(1);
            if (!verName.equals(oldversionName)) {
                apktoolymlContent = apktoolymlContent.replaceAll("versionName: '" + oldversionName + "'", "versionName: '" + verName + "'");
            }

        } else if (apktoolymlContent.contains("versionName: ")) {
            //如果报错，则是不带''，则换一种读取方式
            String oldVersion = read(apktoolyml);
            if (!verName.equals(oldVersion)) {
                apktoolymlContent = apktoolymlContent.replaceAll("versionName: " + oldVersion, "versionName: '" + verName + "'");
            }

        }
        //重新写入数据
        FileUtil.write(apktoolyml, apktoolymlContent);

        //-----------------------------------------------解析AndroidManifest.xml-------------------------------------
        String manifestXml = decodePath + File.separator + "AndroidManifest.xml";
        String manifestXmlContent = FileUtil.read(manifestXml);
        System.out.println("manifestXml:" + manifestXml);

        if (manifestXmlContent.contains("versionName=")) {

            // 正则找到versionName
            Pattern p = Pattern.compile("versionName=\"(.*?)\"");
            Matcher m = p.matcher(manifestXmlContent);
            m.find();
            //默认情况
            String oldversionName = m.group(1);
            if (!verName.equals(oldversionName)) {
                manifestXmlContent = manifestXmlContent.replaceAll("versionName=\"" + oldversionName + "\"", "versionName=\"" + verName + "\"");
            }

        }
        //重新写入数据
        FileUtil.write(manifestXml, manifestXmlContent);
    }

    /**
     * @param filePath
     * @return
     */
    public String read(String filePath) {

        BufferedReader br = null;
        String line = null;
        StringBuffer buf = new StringBuffer();

        try {
            br = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "UTF-8"));

            while ((line = br.readLine()) != null) {
                if (line.trim().contains("versionName:")) {
                    return line.trim().substring("versionName:".length(), line.trim().length()).trim();
                }
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
