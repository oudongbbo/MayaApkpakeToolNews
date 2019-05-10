package com.maya.packtools.builder;

import com.maya.base.utils.FileUtil;
import com.maya.base.utils.LogUtil;
import com.maya.packtools.config.Common;

import java.io.File;

public class GamesExplorer {


    //针对个别游戏母包进行特殊处理
    public static void   handleSmali(String apkTempPath,String gid){

        if(gid.equals("100120")){



            // 删除so库先
            File a = new File(apkTempPath + File.separator + "res" + File.separator + "layout-v26"
                    + File.separator + "abc_screen_toolbar.xml");

            if(a.exists()){
                FileUtil.delDir(a);
                LogUtil.showLog("针对 "+ gid +" 母包Smali 或者资源进行特殊处理", LogUtil.LogLevel.LEVEL_1);
            }

        }





    }



}
