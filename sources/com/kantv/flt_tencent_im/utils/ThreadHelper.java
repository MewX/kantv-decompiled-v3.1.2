package com.kantv.flt_tencent_im.utils;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ThreadHelper {
    public static final ThreadHelper INST = new ThreadHelper();
    private ExecutorService executors;

    private ThreadHelper() {
    }

    public void execute(Runnable runnable) {
        ExecutorService executorService = getExecutorService();
        if (executorService != null) {
            executorService.execute(runnable);
        } else {
            new Thread(runnable).start();
        }
    }

    private ExecutorService getExecutorService() {
        if (this.executors == null) {
            this.executors = Executors.newCachedThreadPool();
        }
        return this.executors;
    }
}