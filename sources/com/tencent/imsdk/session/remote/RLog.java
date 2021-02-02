package com.tencent.imsdk.session.remote;

import android.os.RemoteException;
import android.util.Log;
import com.tencent.imsdk.log.QLog;
import com.tencent.imsdk.session.IWrapperCallback;
import java.util.ArrayList;
import java.util.List;

public class RLog {
    private static final String TAG = QLog.class.getSimpleName();
    List<LogInfo> logs;
    private IWrapperCallback wrapperCallback;

    private static class Holder {
        static RLog instance = new RLog();

        private Holder() {
        }
    }

    class LogInfo {
        public int level;
        public String strInfo;
        public String strTag;

        LogInfo() {
        }
    }

    private RLog() {
        this.logs = new ArrayList();
    }

    public static RLog getInstance() {
        return Holder.instance;
    }

    public void SetWrapperCallback(IWrapperCallback iWrapperCallback) {
        this.wrapperCallback = iWrapperCallback;
    }

    public static void v(String str, String str2) {
        getInstance().log(2, str, str2);
    }

    public static void d(String str, String str2) {
        getInstance().log(3, str, str2);
    }

    public static void i(String str, String str2) {
        getInstance().log(4, str, str2);
    }

    public static void w(String str, String str2) {
        getInstance().log(5, str, str2);
    }

    public static void e(String str, String str2) {
        getInstance().log(6, str, str2);
    }

    private synchronized void log(int i, String str, String str2) {
        try {
            if (this.wrapperCallback == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("level:");
                sb.append(i);
                sb.append(" tag:");
                sb.append(str);
                sb.append(" info:");
                sb.append(str2);
                Log.i("RemoteSerivce", sb.toString());
                LogInfo logInfo = new LogInfo();
                logInfo.level = i;
                logInfo.strInfo = str2;
                logInfo.strTag = str;
                this.logs.add(logInfo);
                return;
            }
            if (this.logs.size() > 0) {
                for (LogInfo logInfo2 : this.logs) {
                    this.wrapperCallback.onLog(logInfo2.level, logInfo2.strTag, logInfo2.strInfo);
                }
                this.logs.clear();
            }
            this.wrapperCallback.onLog(i, str, str2);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return;
    }
}
