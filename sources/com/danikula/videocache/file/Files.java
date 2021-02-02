package com.danikula.videocache.file;

import com.danikula.videocache.HttpProxyCacheDebuger;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

class Files {

    private static final class LastModifiedComparator implements Comparator<File> {
        private int compareLong(long j, long j2) {
            if (j < j2) {
                return -1;
            }
            return j == j2 ? 0 : 1;
        }

        private LastModifiedComparator() {
        }

        public int compare(File file, File file2) {
            return compareLong(file.lastModified(), file2.lastModified());
        }
    }

    Files() {
    }

    static void makeDir(File file) throws IOException {
        if (file.exists()) {
            if (!file.isDirectory()) {
                StringBuilder sb = new StringBuilder();
                sb.append("File ");
                sb.append(file);
                sb.append(" is not directory!");
                throw new IOException(sb.toString());
            }
        } else if (!file.mkdirs()) {
            throw new IOException(String.format("Directory %s can't be created", new Object[]{file.getAbsolutePath()}));
        }
    }

    static List<File> getLruListFiles(File file) {
        LinkedList linkedList = new LinkedList();
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return linkedList;
        }
        List<File> asList = Arrays.asList(listFiles);
        Collections.sort(asList, new LastModifiedComparator());
        return asList;
    }

    static void setLastModifiedNow(File file) throws IOException {
        if (file.exists()) {
            long currentTimeMillis = System.currentTimeMillis();
            if (!file.setLastModified(currentTimeMillis)) {
                modify(file);
                if (file.lastModified() < currentTimeMillis) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new Date(file.lastModified()).toString());
                    sb.append("\n");
                    sb.append(file.getAbsolutePath());
                    HttpProxyCacheDebuger.printfWarning("Last modified date {} is not set for file {}", sb.toString());
                }
            }
        }
    }

    static void modify(File file) throws IOException {
        long length = file.length();
        if (length == 0) {
            recreateZeroSizeFile(file);
            return;
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rwd");
        long j = length - 1;
        randomAccessFile.seek(j);
        byte readByte = randomAccessFile.readByte();
        randomAccessFile.seek(j);
        randomAccessFile.write(readByte);
        randomAccessFile.close();
    }

    private static void recreateZeroSizeFile(File file) throws IOException {
        if (!file.delete() || !file.createNewFile()) {
            StringBuilder sb = new StringBuilder();
            sb.append("Error recreate zero-size file ");
            sb.append(file);
            throw new IOException(sb.toString());
        }
    }
}
