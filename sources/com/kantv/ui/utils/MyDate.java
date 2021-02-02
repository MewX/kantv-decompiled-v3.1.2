package com.kantv.ui.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MyDate {
    public static String getFileName() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis()));
    }

    public static String getDateEN() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
    }
}
