package com.shuyu.gsyvideoplayer.utils;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import tv.danmaku.ijk.media.player.misc.IMediaDataSource;

public class RawDataSourceProvider implements IMediaDataSource {
    private AssetFileDescriptor mDescriptor;
    private byte[] mMediaBytes;

    public RawDataSourceProvider(AssetFileDescriptor assetFileDescriptor) {
        this.mDescriptor = assetFileDescriptor;
    }

    public int readAt(long j, byte[] bArr, int i, int i2) throws IOException {
        long j2 = 1 + j;
        byte[] bArr2 = this.mMediaBytes;
        if (j2 >= ((long) bArr2.length)) {
            return -1;
        }
        if (((long) i2) + j >= ((long) bArr2.length)) {
            int length = (int) (((long) bArr2.length) - j);
            if (length > bArr.length) {
                length = bArr.length;
            }
            i2 = length - 1;
        }
        System.arraycopy(this.mMediaBytes, (int) j, bArr, i, i2);
        return i2;
    }

    public long getSize() throws IOException {
        long length = this.mDescriptor.getLength();
        if (this.mMediaBytes == null) {
            this.mMediaBytes = readBytes(this.mDescriptor.createInputStream());
        }
        return length;
    }

    public void close() throws IOException {
        AssetFileDescriptor assetFileDescriptor = this.mDescriptor;
        if (assetFileDescriptor != null) {
            assetFileDescriptor.close();
        }
        this.mDescriptor = null;
        this.mMediaBytes = null;
    }

    private byte[] readBytes(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static RawDataSourceProvider create(Context context, Uri uri) {
        try {
            return new RawDataSourceProvider(context.getApplicationContext().getContentResolver().openAssetFileDescriptor(uri, "r"));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
}
