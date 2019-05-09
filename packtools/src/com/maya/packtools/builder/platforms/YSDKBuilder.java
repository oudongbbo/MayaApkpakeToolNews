package com.maya.packtools.builder.platforms;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.packtools.builder.base.BaseBuilder;
import com.maya.packtools.builder.base.BaseUtils;
import com.maya.packtools.config.Common;
import com.maya.packtools.model.ApkParser;
import com.maya.packtools.utils.encrypt.ZipMain;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;



public class YSDKBuilder extends BaseBuilder {


    public YSDKBuilder(ApkParser apkParser) {
        super(apkParser);
    }


    @Override
    protected void handleAndroidManifestBySDK() {
        super.handleAndroidManifestBySDK();
    }




    @Override
    protected void handleAndroidManifestBySDK(String manifestPath, Properties prope) {
        super.handleAndroidManifestBySDK();

        // 修改MainActivity的launchMode
        DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();// 创建DocumentBuilderFactory对象
        try {
            DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();// 创建DocumentBuilder对象
            Document document = documentBuilder.parse(new File(manifestPath));// 通过DocumentBuilder对象的parse方法返回一个Document对象
            NodeList activityList = document.getElementsByTagName("activity");// 通过Document对象的getElementsByTagName()返根节点的一个list集合

            boolean isFindMainActivity = false;
            for (int i = 0; i < activityList.getLength(); i++) {
                Node activity = activityList.item(i); // 循环遍历获取每一个activity
                NamedNodeMap activityMap = activity.getAttributes(); // 通过Node对象的getAttributes()方法获取全的属性值
                for (int j = 0; j < activityMap.getLength(); j++) {// 循环遍每一个activity的属性值
                    Node node = activityMap.item(j);
                    System.out.println(node.getNodeName() + ":");
                    System.out.println(node.getNodeValue());
                    if ("android:name".equals(node.getNodeName())
                            && node.getNodeValue().equals(prope.getProperty("mCoreActivity").trim())) {
                        isFindMainActivity = true;
                        System.out.println("isFindMainActivity:" + isFindMainActivity);
                        break;
                    }
                }
                if (isFindMainActivity) {
                    for (int j = 0; j < activityMap.getLength(); j++) {// 循环遍每一个activity的属性值
                        Node node = activityMap.item(j);
                        // 通过Node对象的getNodeName()和getNodeValue()方法获取属性名和属性值
                        if ("android:launchMode".equals(node.getNodeName())) {
                            node.setNodeValue("singleTop");
                            System.out.println("修改MainAcitvity启动模式成功");
                            System.out.println(node.getNodeName() + ":");
                            System.out.println(node.getNodeValue());
                            break;
                        }
                    }
                    break;
                }
            }

            try {

                // XML转字符串
                TransformerFactory tf = TransformerFactory.newInstance();
                Transformer t = tf.newTransformer();
                t.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
                ByteArrayOutputStream bos = new ByteArrayOutputStream();
                t.transform(new DOMSource(document), new StreamResult(bos));
                String xmlStr = bos.toString();

                FileUtil.write(manifestPath, xmlStr);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        } catch (SAXException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void handleSdkPlugins(String sdkplugin, Properties prop) {

        String ysdkContent = FileUtil.read(sdkplugin);
        Pattern p = Pattern.compile("<data android:scheme=\"tencent(.*?)\" />");
        Matcher m = p.matcher(ysdkContent);
        m.find();
        String txAppid = m.group(1);
        ysdkContent = ysdkContent.replaceAll(txAppid, prop.getProperty("appid"));
        LogUtil.showLog("appid:" + prop.getProperty("appid"));

        p = Pattern.compile("<data android:scheme=\"wx(.*?)\" />");
        m = p.matcher(ysdkContent);
        if (m.find()) {
            String wxAppid = m.group(1);
            ysdkContent = ysdkContent.replaceAll(wxAppid, prop.getProperty("wxAppid").substring(2));
            LogUtil.showLog("wxAppid:" + prop.getProperty("wxAppid"));
        } else {
            LogUtil.showLog("wxAppid不存在");
        }

        p = Pattern.compile("android:taskAffinity=\"(.*?).diff\"");
        m = p.matcher(ysdkContent);
        if (m.find()) {
            String wxdiff = m.group(1);
            ysdkContent = ysdkContent.replaceAll(wxdiff + ".diff", pname + ".diff");
        } else {
            LogUtil.showLog("wxdiff不存在");
        }

        p = Pattern.compile("android:name=\"(.*?).PUSH_ACTION\"");
        m = p.matcher(ysdkContent);
        if (m.find()) {
            String xgPushAction = m.group(1);
            ysdkContent = ysdkContent.replaceAll(xgPushAction + ".PUSH_ACTION", pname + ".PUSH_ACTION");
            LogUtil.showLog("修改信鸽PUSH_ACTION前缀：" + pname + ".PUSH_ACTION");
        } else {
            LogUtil.showLog("xgPushAction不存在");
        }

        p = Pattern.compile("android:authorities=\"(.*?).AUTH_XGPUSH\"");
        m = p.matcher(ysdkContent);
        if (m.find()) {
            String xgAuthPush = m.group(1);
            LogUtil.showLog("修改信鸽AUTH_XGPUSH前缀：" + pname + ".AUTH_XGPUSH");
            ysdkContent = ysdkContent.replaceAll(xgAuthPush + ".AUTH_XGPUSH", pname + ".AUTH_XGPUSH");
        } else {
            LogUtil.showLog("xgAuthPush不存在");
        }

        p = Pattern.compile("android:authorities=\"(.*?).TPUSH_PROVIDER\"");
        m = p.matcher(ysdkContent);
        if (m.find()) {
            String xgTpushProvider = m.group(1);
            ysdkContent = ysdkContent.replaceAll(xgTpushProvider + ".TPUSH_PROVIDER", pname + ".TPUSH_PROVIDER");
            LogUtil.showLog("修改信鸽TPUSH_PROVIDER前缀：" + pname + ".TPUSH_PROVIDER");
        } else {
            LogUtil.showLog("xgTpushProvider不存在");
        }

        p = Pattern.compile("android:authorities=\"(.*?).TENCENT.MID.V3\"");
        m = p.matcher(ysdkContent);
        if (m.find()) {
            String xgTencentMidV3 = m.group(1);
            ysdkContent = ysdkContent.replaceAll(xgTencentMidV3 + ".TENCENT.MID.V3", pname + ".TENCENT.MID.V3");
            LogUtil.showLog("修改信鸽TENCENT.MID.V3前缀：" + pname + ".TENCENT.MID.V3");
        } else {
            LogUtil.showLog("xgTencentMidV3不存在");
        }

        String accessId = prop.getProperty("accessId");
        if (accessId != null && !accessId.trim().isEmpty()) {

            p = Pattern.compile("android:name=\"XG_V2_ACCESS_ID\" android:value=\"(.*?)\"");
            m = p.matcher(ysdkContent);
            if (m.find()) {
                String xgAccessId = m.group(1);
                ysdkContent = ysdkContent.replaceAll(xgAccessId, accessId);
                LogUtil.showLog("修改信鸽accessId：" + accessId);
            } else {
                LogUtil.showLog("xgAccessId不存在");
            }
        }

        String accessKey = prop.getProperty("accessKey");
        if (accessKey != null && !accessKey.trim().isEmpty()) {
            p = Pattern.compile("android:name=\"XG_V2_ACCESS_KEY\" android:value=\"(.*?)\"");
            m = p.matcher(ysdkContent);
            if (m.find()) {
                String xgAccessKey = m.group(1);
                ysdkContent = ysdkContent.replaceAll(xgAccessKey, accessKey);
                LogUtil.showLog("修改信鸽accessKey：" + accessKey);
            } else {
                LogUtil.showLog("accessKey不存在");
            }
        }

        FileUtil.write(sdkplugin, ysdkContent);

        try {
            String sdkmulticonfig = Common.getApkTempPath(apkParser) + File.separator + "assets" + File.separator
                    + "ysdkconf.ini";
            Properties multiConfigProp = new Properties();
            FileInputStream sdkfis;

            sdkfis = new FileInputStream(sdkmulticonfig);
            multiConfigProp.load(sdkfis);

            multiConfigProp.setProperty("QQ_APP_ID", prop.getProperty("appid"));
            multiConfigProp.setProperty("WX_APP_ID", prop.getProperty("wxAppid"));
            multiConfigProp.setProperty("OFFER_ID", prop.getProperty("appid"));

            FileOutputStream sdkfos = new FileOutputStream(sdkmulticonfig);
            multiConfigProp.store(sdkfos, new Date().toGMTString());
            sdkfos.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected String handleApplication(String manifest) {

        if (manifest.contains("com.tencent.tmgp.xxx")) {
            manifest = manifest.replaceAll("com.tencent.tmgp.xxx", pname);
        } else {
            LogUtil.showLog("AndroidManifest.xml ——> com.tencent.tmgp.xxx");
        }

        return manifest;
    }

    @Override
    protected void handleActivitySmaliWithOnNewIntent() {

        handleReferActivityWithIntentContent(SDK, BaseUtils.getGameLaunchActivty(apkParser.apkPath, pname_old));

        if (gameMainActivity != null && !"".equals(gameMainActivity)) {
            handleGameMainActivityWithIntentContent(SDK, gameMainActivity);
        } else {
            LogUtil.showLog("gameMainActiivty不存在");
        }
    }

    @Override
    protected void handleTempRFiles() {

        String finalPnamePath = "com.tencent.tmgp.xxx";

        copyFileAndReplacePackageName(SDK, finalPnamePath, pname);
    }

    /**
     * @param SDK
     * @param gameMainActivityName
     */
    private void handleGameMainActivityWithIntentContent(int SDK, String gameMainActivityName) {

        handleReferActivityWithIntentContent(SDK, gameMainActivityName);

        String fromFilePath = Common.getFixsPathBySDK(SDK) + File.separator + "YSDKWXEntryActivity.smali";
        File fromFile = new File(fromFilePath);

        String tempPath = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator;
        String toFilePath = tempPath + "/com/tencent/ysdk/module/user/impl/wx/YSDKWXEntryActivity.smali";
        File toFile = new File(toFilePath);

        FileUtil.copyFile(fromFile, toFile);

        String ysdkWXEntryActivityContent = FileUtil.read(toFilePath);

        String stubString = "Lcom/x/xx/xxx";

        if (ysdkWXEntryActivityContent.contains(stubString)) {

            String gameMainActivityClassPathStr = "L" + gameMainActivityName.replaceAll("\\.", "\\/");

            LogUtil.showLog(toFilePath + "stubString" + stubString + " " + gameMainActivityClassPathStr + "");

            String newYsdkWXEntryActivityContent = ysdkWXEntryActivityContent.replaceAll(stubString,
                    gameMainActivityClassPathStr);
            FileUtil.write(toFilePath, newYsdkWXEntryActivityContent);

        } else {

            LogUtil.showLog(fromFile.getName() + "stubString" + stubString);
        }

    }

    /**
     * @param SDK
     * @param activityName
     */
    private void handleReferActivityWithIntentContent(int SDK, String activityName) {

        String ParentPath = Common.getApkTempPath(apkParser) + System.getProperty("file.separator") + "smali"
                + System.getProperty("file.separator");
        String fromPath = activityName.replaceAll("\\.", "\\");

        String launchActivityFilePath = ParentPath + fromPath + ".smali";
        File file = new File(launchActivityFilePath);
        if (!file.exists()) {
            LogUtil.showLog("-->" + file.getAbsolutePath() + "<--");
        } else {
            String launchActivityContent = FileUtil.read(launchActivityFilePath);
            if (isActivityContainsOnNewIntent(launchActivityFilePath)) {

                LogUtil.showLog("-->LaunchActivity:" + file.getName() + " onNewIntent<--");
            } else {

                LogUtil.showLog("-->LaunchActivity:" + file.getName() + " onNewIntent<--");

                String newIntentContent = FileUtil
                        .read(Common.getFixsPathBySDK(SDK) + File.separator + "newIentent.txt");

                launchActivityContent = launchActivityContent + newIntentContent;

                FileUtil.write(launchActivityFilePath, launchActivityContent);

                LogUtil.showLog("-----------------onNewIntent---------------------");
            }
        }

    }

    /**
     * onNewIntent
     *
     * @param launcherActivityFilePath
     * @return boolean
     */
    private boolean isActivityContainsOnNewIntent(String launcherActivityFilePath) {

        String activityContent = FileUtil.read(launcherActivityFilePath);
        if (!activityContent.contains("onNewIntent")) {
            if (activityContent.contains(".super Landroid/app")) {
                return false;
            } else {
                Pattern p = Pattern.compile(".super L(.*?);");
                Matcher m = p.matcher(activityContent);
                m.find();
                String superClassName = m.group(1);
                superClassName = superClassName.replace("/", ".");
                LogUtil.showLog("YSDK -->onNewIntent--> superClassName --> " + superClassName);
                String superClassPath = FileUtil.getFilePathFrom(superClassName);
                String superClassFullPath = Common.getApkTempPath(apkParser) + File.separator + "smali" + File.separator
                        + superClassPath + ".smali";
                return isActivityContainsOnNewIntent(superClassFullPath);
            }
        } else {
            LogUtil.showLog("YSDK --> onNewIntent --> onNewIntent -->  --> " + launcherActivityFilePath);
            return true;
        }
    }

    @Override
    public void handlePlatformComConfig(Properties newPro, Properties oldPro) {
        super.handlePlatformComConfig(newPro, oldPro);

       /* String appid = oldPro.getProperty("appid").trim();
        String tlogKey = oldPro.getProperty("tlogKey");

        newPro.setProperty("mAppId", ZipMain.zipOption("0", appid)); // tlog需要的appid
        if (tlogKey != null && !tlogKey.trim().isEmpty()) {
            newPro.setProperty("mAppKey", ZipMain.zipOption("0", tlogKey.trim())); // tlog的加密key
        }

        // qq会员参数
        String mPayId = oldPro.getProperty("mPayId");
        String mRefer = oldPro.getProperty("mRefer");
        if (mPayId != null && !mPayId.trim().isEmpty()) {
            newPro.setProperty("mPayId", ZipMain.zipOption("0", mPayId.trim()));
        }

        if (mRefer != null && !mRefer.trim().isEmpty()) {
            newPro.setProperty("mRefer", ZipMain.zipOption("0", mRefer.trim()));
        }*/

    }

}
