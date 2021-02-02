package com.kantv.ui.androidupnpdemo.util;

import java.util.Collection;

public class ListUtils {
    public static boolean isEmpty(Collection collection) {
        return collection == null || collection.size() == 0;
    }
}
