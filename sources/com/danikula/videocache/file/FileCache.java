package com.danikula.videocache.file;

import com.danikula.videocache.Cache;
import com.danikula.videocache.ProxyCacheException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public class FileCache implements Cache {
    private static final String TEMP_POSTFIX = ".download";
    private RandomAccessFile dataFile;
    private final DiskUsage diskUsage;
    public File file;

    public FileCache(File file2) throws ProxyCacheException {
        this(file2, new UnlimitedDiskUsage());
    }

    public FileCache(File file2, DiskUsage diskUsage2) throws ProxyCacheException {
        File file3;
        if (diskUsage2 != null) {
            try {
                this.diskUsage = diskUsage2;
                Files.makeDir(file2.getParentFile());
                boolean exists = file2.exists();
                if (exists) {
                    file3 = file2;
                } else {
                    File parentFile = file2.getParentFile();
                    StringBuilder sb = new StringBuilder();
                    sb.append(file2.getName());
                    sb.append(TEMP_POSTFIX);
                    file3 = new File(parentFile, sb.toString());
                }
                this.file = file3;
                this.dataFile = new RandomAccessFile(this.file, exists ? "r" : "rw");
            } catch (IOException e) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error using file ");
                sb2.append(file2);
                sb2.append(" as disc cache");
                throw new ProxyCacheException(sb2.toString(), e);
            }
        } else {
            throw new NullPointerException();
        }
    }

    public synchronized long available() throws ProxyCacheException {
        try {
        } catch (IOException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Error reading length of file ");
            sb.append(this.file);
            throw new ProxyCacheException(sb.toString(), e);
        }
        return (long) ((int) this.dataFile.length());
    }

    public synchronized int read(byte[] bArr, long j, int i) throws ProxyCacheException {
        try {
            this.dataFile.seek(j);
        } catch (IOException e) {
            throw new ProxyCacheException(String.format("Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]", new Object[]{Integer.valueOf(i), Long.valueOf(j), Long.valueOf(available()), Integer.valueOf(bArr.length)}), e);
        }
        return this.dataFile.read(bArr, 0, i);
    }

    public synchronized void append(byte[] bArr, int i) throws ProxyCacheException {
        try {
            if (!isCompleted()) {
                this.dataFile.seek(available());
                this.dataFile.write(bArr, 0, i);
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Error append cache: cache file ");
                sb.append(this.file);
                sb.append(" is completed!");
                throw new ProxyCacheException(sb.toString());
            }
        } catch (IOException e) {
            throw new ProxyCacheException(String.format("Error writing %d bytes to %s from buffer with size %d", new Object[]{Integer.valueOf(i), this.dataFile, Integer.valueOf(bArr.length)}), e);
        }
    }

    public synchronized void close() throws ProxyCacheException {
        try {
            this.dataFile.close();
            this.diskUsage.touch(this.file);
        } catch (IOException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Error closing file ");
            sb.append(this.file);
            throw new ProxyCacheException(sb.toString(), e);
        }
    }

    public synchronized void complete() throws ProxyCacheException {
        if (!isCompleted()) {
            close();
            File file2 = new File(this.file.getParentFile(), this.file.getName().substring(0, this.file.getName().length() - 9));
            if (this.file.renameTo(file2)) {
                this.file = file2;
                try {
                    this.dataFile = new RandomAccessFile(this.file, "r");
                    this.diskUsage.touch(this.file);
                } catch (IOException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Error opening ");
                    sb.append(this.file);
                    sb.append(" as disc cache");
                    throw new ProxyCacheException(sb.toString(), e);
                }
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error renaming file ");
                sb2.append(this.file);
                sb2.append(" to ");
                sb2.append(file2);
                sb2.append(" for completion!");
                throw new ProxyCacheException(sb2.toString());
            }
        }
    }

    public synchronized boolean isCompleted() {
        return !isTempFile(this.file);
    }

    public File getFile() {
        return this.file;
    }

    private boolean isTempFile(File file2) {
        return file2.getName().endsWith(TEMP_POSTFIX);
    }
}
