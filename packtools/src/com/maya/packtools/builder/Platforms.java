package com.maya.packtools.builder;

public class Platforms {

    public static final int SDK_UNKNOWN = 1;
    public static final String SDK_NAME_UNKNOWN = "unknow";

    public static final int SDK_MAYA = 101;
    public static final String SDK_NAME_MAYA = "maya";

    public static final int SDK_FANXUN = 101;
    public static final String SDK_NAME_FANXUN = "fanxun";

    //各个渠道商
    public static final int SDK_UC = 115;
    public static final String SDK_NAME_UC = "uc";

    public static final int SDK_BAIDU = 116;
    public static final String SDK_NAME_BAIDU = "baidu";

    public static final int SDK_VIVO = 117;
    public static final String SDK_NAME_VIVO = "vivo";

    public static final int SDK_360 = 118;
    public static final String SDK_NAME_360 = "360";

    public static final int SDK_HUAWEI = 119;
    public static final String SDK_NAME_HUAWEI = "huawei";

    public static final int SDK_MI = 120;
    public static final String SDK_NAME_mi = "mi";

    public static final int SDK_OPPO = 121;
    public static final String SDK_NAME_OPPO = "oppo";

    public static final int SDK_COOLPAD = 122;
    public static final String SDK_NAME_COOLPAD = "coolpad";

    public static final int SDK_LENOVO = 123;
    public static final String SDK_NAME_LENOVO = "lenovo";

    public static final int SDK_MEIZU = 124;
    public static final String SDK_NAME_MEIZU = "meizu";

    public static final int SDK_SAMSUNG = 125;
    public static final String SDK_NAME_SAMSUNG = "samsung";

    public static final int SDK_JINLI = 126;
    public static final String SDK_NAME_JINLI = "jinli";

    public static final int SDK_TIANYU = 154;
    public static final String SDK_NAME_TIANYU = "tianyu";

    public static final int SDK_NUBIA = 147;
    public static final String SDK_NAME_NUBIA = "nubia";

    //天宇游
    public static final int SDK_TIANYUYOU = 148;
    public static final String SDK_NAME_TIANYUYOU = "tianyuyou";


    public static final int SDK_YSDK = 114;
    public static final String SDK_NAME_YSEK = "ysdk";

    //爱奇艺
    public static final int SDK_IQIYI = 157;
    public static final String SDK_NAME_IQIYI = "iqiyi";

    //4399
    public static final int SDK_M4399 = 156;
    public static final String SDK_NAME_M4399 = "4399";


    //BiliBili
    public static final int SDK_BILIBILI = 162;
    public static final String SDK_NAME_BILIBILI = "bilibili";

    //鲸旗
    public static final int SDK_JQGAME = 163;
    public static final String SDK_NAME_JQGAME = "jqgame";
    //蓝叠
    public static final int SDK_LANDIE = 155;
    public static final String SDK_NAME_LANDIE = "landie";


    //夜神
    public static final int SDK_YESHEN = 171;
    public static final String SDK_NAME_YESHEN = "yeshen";


    //悟饭
    public static final int SDK_WUFAN = 173;
    public static final String SDK_NAME_WUFAN = "wufan";


    //头条统计log
    public static final int SDK_TOUTIAOLOG = 103;
    public static final String SDK_NAME_TOUTIAOLOG = "toutiaolog";


    //名通
    public static final int SDK_MINGTONG = 211;
    public static final String SDK_NAME_MINGTONG = "mingtong";

    //炎石
    public static final int SDK_YANSHI = 204;
    public static final String SDK_NAME_YANSHI = "yanshi";


    //云娃
    public static final int SDK_YUNWA = 207;
    public static final String SDK_NAME_YUNWA = "yunwa";


    //雄兵
    public static final int SDK_XIONGBING = 243;
    public static final String SDK_NAME_XIONGBING = "xiongbing";


    //GG大玩家
    public static final int SDK_GGDAWANJIA = 266;
    public static final String SDK_NAME_GGDAWANJIA = "ggdawanjia";


    //闲兔
    public static final int SDK_XIANTU = 193;
    public static final String SDK_NAME_XIANTU = "xiantu";


    //乐嗨嗨
    public static final int SDK_LEHIHI = 247;
    public static final String SDK_NAME_LEHIHI = "lehihi";


    //128手游
    public static final int SDK_128SHOUYOU = 275;
    public static final String SDK_NAME_128SHOUYOU = "128shouyou";


    //地壳
    public static final int SDK_DIQIAO = 277;
    public static final String SDK_NAME_DIQIAO = "diqiao";


    //手游之家
    public static final int SDK_SHOYOUZHIJIA = 293;
    public static final String SDK_NAME_SHOYOUZHIJIA = "shoyouzhijia";


    //米粒游
    public static final int SDK_MILIYOU = 289;
    public static final String SDK_NAME_MILIYOU = "miliyou";


    //久游堂
    public static final int SDK_JIUYOUTANG = 231;
    public static final String SDK_NAME_JIUYOUTANG = "jiuyoutang";

    //推个游
    public static final int SDK_TUIGEYOU = 292;
    public static final String SDK_NAME_TUIGEYOU = "tuigeyou";

    //小七
    public static final int SDK_XIAOQI = 309;
    public static final String SDK_NAME_XIAOQI = "xiaoqi";

    //云娱
    public static final int SDK_YUNYU = 310;
    public static final String SDK_NAME_YUNYU = "yunyu";


    public static int getSdkNoByName(String sdkName) {
        switch (sdkName) {

            case SDK_NAME_YUNYU:
                return SDK_YUNYU;

            case SDK_NAME_XIAOQI:
                return SDK_XIAOQI;

            case SDK_NAME_JIUYOUTANG:
                return SDK_JIUYOUTANG;

            case SDK_NAME_TUIGEYOU:
                return SDK_TUIGEYOU;
            case SDK_NAME_MILIYOU:
                return SDK_MILIYOU;
            case SDK_NAME_DIQIAO:
                return SDK_DIQIAO;
            case SDK_NAME_SHOYOUZHIJIA:
                return SDK_SHOYOUZHIJIA;
            case SDK_NAME_128SHOUYOU:
                return SDK_128SHOUYOU;
            case SDK_NAME_MAYA:
                return SDK_MAYA;
            case SDK_NAME_OPPO:
                return SDK_OPPO;
            case SDK_NAME_360:
                return SDK_360;
            case SDK_NAME_MEIZU:
                return SDK_MEIZU;
            case SDK_NAME_LENOVO:
                return SDK_LENOVO;
            case SDK_NAME_JINLI:
                return SDK_JINLI;
            case SDK_NAME_BAIDU:
                return SDK_BAIDU;
            case SDK_NAME_SAMSUNG:
                return SDK_SAMSUNG;
            case SDK_NAME_HUAWEI:
                return SDK_HUAWEI;
            case SDK_NAME_COOLPAD:
                return SDK_COOLPAD;
            case SDK_NAME_UC:
                return SDK_UC;
            case SDK_NAME_TIANYU:
                return SDK_TIANYU;
            case SDK_NAME_mi:
                return SDK_MI;
            case SDK_NAME_VIVO:
                return SDK_VIVO;
            case SDK_NAME_NUBIA:
                return SDK_NUBIA;
            case SDK_NAME_TIANYUYOU:
                return SDK_TIANYUYOU;
            case SDK_NAME_YSEK:
                return SDK_YSDK;
            case SDK_NAME_IQIYI:
                return SDK_IQIYI;
            case SDK_NAME_M4399:
                return SDK_M4399;
            case SDK_NAME_BILIBILI:
                return SDK_BILIBILI;
            case SDK_NAME_JQGAME:
                return SDK_JQGAME;
            case SDK_NAME_LANDIE:
                return SDK_LANDIE;

            case SDK_NAME_YESHEN:
                return SDK_YESHEN;

            case SDK_NAME_WUFAN:
                return SDK_WUFAN;


            case SDK_NAME_TOUTIAOLOG:

                return SDK_TOUTIAOLOG;


            case SDK_NAME_MINGTONG:
                return SDK_MINGTONG;


            case SDK_NAME_YANSHI:

                return SDK_YANSHI;

            case SDK_NAME_YUNWA:
                return SDK_YUNWA;


            case SDK_NAME_XIONGBING:
                return SDK_XIONGBING;

            case SDK_NAME_GGDAWANJIA:
                return SDK_GGDAWANJIA;

            case SDK_NAME_XIANTU:
                return SDK_XIANTU;

            case SDK_NAME_LEHIHI:

                return SDK_LEHIHI;

            default:
                return SDK_UNKNOWN;
        }
    }



    public static String getSdkNameByNo(int sdk) {

        switch (sdk) {

            case SDK_YUNYU:

                return SDK_NAME_YUNYU;

            case SDK_XIAOQI:
                return SDK_NAME_XIAOQI;

            case SDK_JIUYOUTANG:
                return SDK_NAME_JIUYOUTANG;

            case SDK_TUIGEYOU:
                return SDK_NAME_TUIGEYOU;

            case SDK_MAYA:

                return SDK_NAME_MAYA;

            case SDK_OPPO:

                return SDK_NAME_OPPO;

            case SDK_360:

                return SDK_NAME_360;

            case SDK_MEIZU:

                return SDK_NAME_MEIZU;

            case SDK_LENOVO:

                return SDK_NAME_LENOVO;

            case SDK_JINLI:

                return SDK_NAME_JINLI;

            case SDK_BAIDU:

                return SDK_NAME_BAIDU;

            case SDK_SAMSUNG:

                return SDK_NAME_SAMSUNG;

            case SDK_HUAWEI:

                return SDK_NAME_HUAWEI;

            case SDK_COOLPAD:

                return SDK_NAME_COOLPAD;

            case SDK_UC:

                return SDK_NAME_UC;

            case SDK_TIANYU:

                return SDK_NAME_TIANYU;

            case SDK_MI:

                return SDK_NAME_mi;

            case SDK_VIVO:

                return SDK_NAME_VIVO;

            case SDK_NUBIA:

                return SDK_NAME_NUBIA;

            case SDK_TIANYUYOU:

                return SDK_NAME_TIANYUYOU;

            case SDK_YSDK:

                return SDK_NAME_YSEK;

            case SDK_IQIYI:

                return SDK_NAME_IQIYI;

            case SDK_M4399:

                return SDK_NAME_M4399;

            case SDK_BILIBILI:

                return SDK_NAME_BILIBILI;

            case SDK_JQGAME:

                return SDK_NAME_JQGAME;

            case SDK_LANDIE:

                return SDK_NAME_LANDIE;

            case SDK_YESHEN:

                return SDK_NAME_YESHEN;

            case SDK_WUFAN:
                return SDK_NAME_WUFAN;

            case SDK_TOUTIAOLOG:

                return SDK_NAME_TOUTIAOLOG;

            case SDK_YANSHI:

                return SDK_NAME_YANSHI;


            case SDK_YUNWA:
                return SDK_NAME_YUNWA;

            case SDK_XIONGBING:

                return SDK_NAME_XIONGBING;

            case SDK_GGDAWANJIA:

                return SDK_NAME_GGDAWANJIA;

            case SDK_XIANTU:

                return SDK_NAME_XIANTU;

            case SDK_LEHIHI:

                return SDK_NAME_LEHIHI;

            case SDK_DIQIAO:
                return SDK_NAME_DIQIAO;

            case SDK_SHOYOUZHIJIA:

                return SDK_NAME_SHOYOUZHIJIA;

            case SDK_128SHOUYOU:

                return SDK_NAME_128SHOUYOU;

            case SDK_MILIYOU:

                return SDK_NAME_MILIYOU;

            default:
                return SDK_NAME_UNKNOWN;
        }
    }


}
