package com.avos.avoscloud.upload;

import com.alibaba.fastjson.JSON;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVOSCloud;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import java.util.List;
import java.util.zip.CRC32;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request.Builder;
import okhttp3.RequestBody;
import okhttp3.Response;

class QiniuAccessor {
    static final int BLOCK_SIZE = 4194304;
    static final String DEFAULT_CONTENT_TYPE = "application/octet-stream";
    static final String HEAD_AUTHORIZATION = "Authorization";
    static final String HEAD_CONTENT_LENGTH = "Content-Length";
    static final String HEAD_CONTENT_TYPE = "Content-Type";
    static final int NONWIFI_CHUNK_SIZE = 65536;
    static final String QINIU_BRICK_UPLOAD_EP = "http://upload.qiniu.com/bput/%s/%d";
    static final String QINIU_CREATE_BLOCK_EP = "http://upload.qiniu.com/mkblk/%d";
    static final String QINIU_HOST = "http://upload.qiniu.com";
    static final String QINIU_MKFILE_EP = "http://upload.qiniu.com/mkfile/%d/key/%s";
    static final String TEXT_CONTENT_TYPE = "text/plain";
    static final int WIFI_CHUNK_SIZE = 262144;
    private OkHttpClient client;
    private String fileKey;
    private String uploadToken;

    static class QiniuBlockResponseData {
        public String checksum;
        public long crc32;
        public String ctx;
        public String host;
        public int offset;

        QiniuBlockResponseData() {
        }
    }

    static class QiniuMKFileResponseData {
        public String hash;
        public String key;

        QiniuMKFileResponseData() {
        }
    }

    QiniuAccessor(OkHttpClient okHttpClient, String str, String str2) {
        this.client = okHttpClient;
        this.uploadToken = str;
        this.fileKey = str2;
    }

    private static <T> T parseQiniuResponse(Response response, Class<T> cls) throws Exception {
        int code = response.code();
        String message = response.message();
        String header = response.header("X-Log");
        if (code != 401) {
            String stringFromBytes = AVUtils.stringFromBytes(response.body().bytes());
            try {
                if (code / 100 == 2) {
                    return JSON.parseObject(stringFromBytes, cls);
                }
            } catch (Exception unused) {
            }
            if (stringFromBytes.length() > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(code);
                sb.append(":");
                sb.append(stringFromBytes);
                throw new Exception(sb.toString());
            } else if (!AVUtils.isBlankString(header)) {
                throw new Exception(header);
            } else {
                throw new Exception(message);
            }
        } else {
            throw new Exception("unauthorized to create Qiniu Block");
        }
    }

    public QiniuBlockResponseData createBlockInQiniu(int i, int i2, byte[] bArr, int i3) {
        String str = DEFAULT_CONTENT_TYPE;
        try {
            if (AVOSCloud.isDebugLogEnabled()) {
                avlog.d("try to invoke mkblk");
            }
            String format = String.format(QINIU_CREATE_BLOCK_EP, new Object[]{Integer.valueOf(i)});
            Builder builder = new Builder();
            builder.url(format);
            builder.addHeader("Content-Type", str);
            builder.addHeader("Content-Length", String.valueOf(i2));
            StringBuilder sb = new StringBuilder();
            sb.append("UpToken ");
            sb.append(this.uploadToken);
            builder.addHeader("Authorization", sb.toString());
            return (QiniuBlockResponseData) parseQiniuResponse(this.client.newCall(builder.post(RequestBody.create(MediaType.parse(str), bArr, 0, i2)).build()).execute(), QiniuBlockResponseData.class);
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("encounter exception during file uploading(mkblk). retry=");
            sb2.append(i3);
            log.e(sb2.toString(), e);
            int i4 = i3 - 1;
            if (i3 > 0) {
                return createBlockInQiniu(i, i2, bArr, i4);
            }
            return null;
        }
    }

    public QiniuBlockResponseData putFileBlocksToQiniu(QiniuBlockResponseData qiniuBlockResponseData, int i, byte[] bArr, int i2, int i3) {
        String str = DEFAULT_CONTENT_TYPE;
        try {
            String format = String.format(QINIU_BRICK_UPLOAD_EP, new Object[]{qiniuBlockResponseData.ctx, Integer.valueOf(qiniuBlockResponseData.offset)});
            Builder builder = new Builder();
            builder.url(format);
            builder.addHeader("Content-Type", str);
            builder.addHeader("Content-Length", String.valueOf(i2));
            StringBuilder sb = new StringBuilder();
            sb.append("UpToken ");
            sb.append(this.uploadToken);
            builder.addHeader("Authorization", sb.toString());
            QiniuBlockResponseData qiniuBlockResponseData2 = (QiniuBlockResponseData) parseQiniuResponse(this.client.newCall(builder.post(RequestBody.create(MediaType.parse(str), bArr, 0, i2)).build()).execute(), QiniuBlockResponseData.class);
            validateCrc32Value(qiniuBlockResponseData2, bArr, 0, i2);
            return qiniuBlockResponseData2;
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("encounter exception during file uploading(bput). retry=");
            sb2.append(i3);
            log.e(sb2.toString(), e);
            int i4 = i3 - 1;
            if (i3 > 0) {
                return putFileBlocksToQiniu(qiniuBlockResponseData, i, bArr, i2, i4);
            }
            return null;
        }
    }

    private void validateCrc32Value(QiniuBlockResponseData qiniuBlockResponseData, byte[] bArr, int i, int i2) throws AVException {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, i, i2);
        long value = crc32.getValue();
        if (qiniuBlockResponseData != null && qiniuBlockResponseData.crc32 != value) {
            throw new AVException(-1, "CRC32 validation failure for chunk upload");
        }
    }

    public QiniuMKFileResponseData makeFile(int i, List<String> list, int i2) throws Exception {
        String str = "text/plain";
        try {
            String format = String.format(QINIU_MKFILE_EP, new Object[]{Integer.valueOf(i), AVUtils.base64Encode(this.fileKey)});
            String joinCollection = AVUtils.joinCollection(list, ",");
            Builder builder = new Builder();
            builder.url(format);
            builder.addHeader("Content-Type", str);
            builder.addHeader("Content-Length", String.valueOf(joinCollection.length()));
            StringBuilder sb = new StringBuilder();
            sb.append("UpToken ");
            sb.append(this.uploadToken);
            builder.addHeader("Authorization", sb.toString());
            return (QiniuMKFileResponseData) parseQiniuResponse(this.client.newCall(builder.post(RequestBody.create(MediaType.parse(str), joinCollection)).build()).execute(), QiniuMKFileResponseData.class);
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("encounter exception during file uploading(mkfile). retry=");
            sb2.append(i2);
            log.e(sb2.toString(), e);
            int i3 = i2 - 1;
            if (i2 > 0) {
                return makeFile(i, list, i3);
            }
            return null;
        }
    }
}
