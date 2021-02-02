package com.kantv.ui.utils;

import android.content.res.Resources;
import com.kantv.common.log.AILog;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;

public class RawReader {
    private static final String TAG = "RawReader";

    public static String readRawResource(Resources resources, int i) {
        String str = TAG;
        InputStream openRawResource = resources.openRawResource(i);
        StringWriter stringWriter = new StringWriter();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openRawResource, "UTF-8"));
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                stringWriter.write(readLine);
            }
            try {
            } catch (Exception e) {
                AILog.d(str, e.getMessage());
            }
        } catch (Exception e2) {
            AILog.d(str, e2.getMessage());
        } finally {
            try {
                openRawResource.close();
            } catch (Exception e3) {
                AILog.d(str, e3.getMessage());
            }
        }
        return stringWriter.toString();
    }
}
