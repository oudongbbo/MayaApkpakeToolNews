package com.maya.base.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

    /**
     * @return
     */
    public static String getFormatDate() {
        String date;
        SimpleDateFormat formater = new SimpleDateFormat("yyyyMMdd");
        date = formater.format(new Date());
        return date;
    }

    public static String getFormatTime() {
        String date;
        SimpleDateFormat formater = new SimpleDateFormat("HHmmss");
        date = formater.format(new Date());
        return date;
    }

    public static String getFormatDateTime() {
        String date;
        SimpleDateFormat formater = new SimpleDateFormat("yyyyMMddHHmmss");
        date = formater.format(new Date());
        return date;
    }

}
