package com.danikula.videocache.file;

import com.danikula.videocache.HttpProxyCacheDebuger;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class LruDiskUsage implements DiskUsage {
    private final ExecutorService workerThread = Executors.newSingleThreadExecutor();

    private class TouchCallable implements Callable<Void> {
        private final File file;

        public TouchCallable(File file2) {
            this.file = file2;
        }

        public Void call() throws Exception {
            LruDiskUsage.this.touchInBackground(this.file);
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public abstract boolean accept(File file, long j, int i);

    public void touch(File file) throws IOException {
        this.workerThread.submit(new TouchCallable(file));
    }

    /* access modifiers changed from: private */
    public void touchInBackground(File file) throws IOException {
        Files.setLastModifiedNow(file);
        trim(Files.getLruListFiles(file.getParentFile()));
    }

    private void trim(List<File> list) {
        long countTotalSize = countTotalSize(list);
        int size = list.size();
        for (File file : list) {
            if (!accept(file, countTotalSize, size)) {
                long length = file.length();
                if (file.delete()) {
                    size--;
                    countTotalSize -= length;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Cache file ");
                    sb.append(file);
                    sb.append(" is deleted because it exceeds cache limit");
                    HttpProxyCacheDebuger.printfLog(sb.toString());
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Error deleting file ");
                    sb2.append(file);
                    sb2.append(" for trimming cache");
                    HttpProxyCacheDebuger.printfError(sb2.toString());
                }
            }
        }
    }

    private long countTotalSize(List<File> list) {
        long j = 0;
        for (File length : list) {
            j += length.length();
        }
        return j;
    }
}
