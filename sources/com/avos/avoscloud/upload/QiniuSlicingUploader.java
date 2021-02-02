package com.avos.avoscloud.upload;

import com.avos.avoscloud.AVFile;
import com.avos.avoscloud.ProgressCallback;
import com.avos.avoscloud.SaveCallback;

class QiniuSlicingUploader extends HttpClientUploader {
    private final String fileKey;
    private ProgressCalculator progressCalculator;
    private QiniuAccessor qiniuAccessor;
    private final String token;
    private int uploadChunkSize = 262144;

    QiniuSlicingUploader(AVFile aVFile, String str, String str2, SaveCallback saveCallback, ProgressCallback progressCallback) {
        super(aVFile, saveCallback, progressCallback);
        this.token = str;
        this.fileKey = str2;
        this.qiniuAccessor = new QiniuAccessor(getOKHttpClient(), str, str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:47:?, code lost:
        r0 = r1.qiniuAccessor.makeFile(r8, r13, 6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00e3, code lost:
        if (r0 == null) goto L_0x00f7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00ed, code lost:
        if (r0.key.equals(r1.fileKey) != false) goto L_0x00f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00f0, code lost:
        if (r15 == null) goto L_0x00f5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:?, code lost:
        r15.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:?, code lost:
        r0 = com.avos.avoscloud.AVErrorUtils.createException(-1, "upload file failure");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x00fe, code lost:
        if (r15 == null) goto L_0x0103;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:?, code lost:
        r15.close();
     */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x0117 A[SYNTHETIC, Splitter:B:75:0x0117] */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x011f A[SYNTHETIC, Splitter:B:82:0x011f] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.avos.avoscloud.AVException doWork() {
        /*
            r20 = this;
            r1 = r20
            android.content.Context r0 = com.avos.avoscloud.AVOSCloud.applicationContext
            boolean r0 = com.avos.avoscloud.AVUtils.isWifi(r0)
            if (r0 != 0) goto L_0x000e
            r0 = 65536(0x10000, float:9.18355E-41)
            r1.uploadChunkSize = r0
        L_0x000e:
            int r0 = r1.uploadChunkSize
            byte[] r0 = new byte[r0]
            com.avos.avoscloud.AVFile r2 = r1.avFile
            int r8 = r2.getSize()
            r9 = 4194304(0x400000, float:5.877472E-39)
            int r2 = r8 / r9
            int r3 = r8 % r9
            r10 = 0
            if (r3 <= 0) goto L_0x0023
            r3 = 1
            goto L_0x0024
        L_0x0023:
            r3 = 0
        L_0x0024:
            int r12 = r2 + r3
            java.util.ArrayList r13 = new java.util.ArrayList
            r13.<init>(r12)
            com.avos.avoscloud.upload.FileUploader$ProgressCalculator r2 = new com.avos.avoscloud.upload.FileUploader$ProgressCalculator
            com.avos.avoscloud.upload.QiniuSlicingUploader$1 r3 = new com.avos.avoscloud.upload.QiniuSlicingUploader$1
            r3.<init>()
            r2.<init>(r12, r3)
            r1.progressCalculator = r2
            com.avos.avoscloud.AVFile r2 = r1.avFile     // Catch:{ Exception -> 0x010d, all -> 0x0109 }
            java.io.InputStream r15 = r2.getDataStream()     // Catch:{ Exception -> 0x010d, all -> 0x0109 }
            r7 = 0
        L_0x003e:
            r6 = 6
            if (r7 >= r12) goto L_0x00dc
            int r16 = r7 * r9
            int r2 = r12 + -1
            if (r7 != r2) goto L_0x004b
            int r2 = r8 - r16
            r5 = r2
            goto L_0x004d
        L_0x004b:
            r5 = 4194304(0x400000, float:5.877472E-39)
        L_0x004d:
            int r2 = r1.uploadChunkSize     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            int r2 = r5 / r2
            int r3 = r1.uploadChunkSize     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            int r3 = r5 % r3
            if (r3 <= 0) goto L_0x0059
            r3 = 1
            goto L_0x005a
        L_0x0059:
            r3 = 0
        L_0x005a:
            int r4 = r2 + r3
            r2 = 0
            r3 = 0
        L_0x005e:
            if (r3 >= r4) goto L_0x00b7
            int r9 = r1.uploadChunkSize     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            int r9 = r9 * r3
            int r11 = r4 + -1
            if (r3 != r11) goto L_0x006b
            int r9 = r5 - r9
            goto L_0x006d
        L_0x006b:
            int r9 = r1.uploadChunkSize     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
        L_0x006d:
            int r11 = r9 + 0
            int r11 = r15.read(r0, r10, r11)     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            int r17 = r11 + 0
            r10 = r17
        L_0x0077:
            if (r11 <= 0) goto L_0x0083
            if (r10 >= r9) goto L_0x0083
            int r11 = r9 - r10
            int r11 = r15.read(r0, r10, r11)     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            int r10 = r10 + r11
            goto L_0x0077
        L_0x0083:
            if (r3 != 0) goto L_0x0093
            com.avos.avoscloud.upload.QiniuAccessor r2 = r1.qiniuAccessor     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            com.avos.avoscloud.upload.QiniuAccessor$QiniuBlockResponseData r2 = r2.createBlockInQiniu(r5, r9, r0, r6)     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            r10 = r3
            r18 = r4
            r19 = r5
            r9 = r7
            r14 = 6
            goto L_0x00ab
        L_0x0093:
            com.avos.avoscloud.upload.QiniuAccessor r10 = r1.qiniuAccessor     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            r11 = 6
            r18 = r2
            r2 = r10
            r10 = r3
            r3 = r18
            r18 = r4
            r4 = r16
            r19 = r5
            r5 = r0
            r14 = 6
            r6 = r9
            r9 = r7
            r7 = r11
            com.avos.avoscloud.upload.QiniuAccessor$QiniuBlockResponseData r2 = r2.putFileBlocksToQiniu(r3, r4, r5, r6, r7)     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
        L_0x00ab:
            int r3 = r10 + 1
            r7 = r9
            r4 = r18
            r5 = r19
            r6 = 6
            r9 = 4194304(0x400000, float:5.877472E-39)
            r10 = 0
            goto L_0x005e
        L_0x00b7:
            r9 = r7
            if (r2 == 0) goto L_0x00cd
            java.lang.String r2 = r2.ctx     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            r13.add(r2)     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            com.avos.avoscloud.upload.FileUploader$ProgressCalculator r2 = r1.progressCalculator     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            r3 = 100
            r2.publishProgress(r9, r3)     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            int r7 = r9 + 1
            r9 = 4194304(0x400000, float:5.877472E-39)
            r10 = 0
            goto L_0x003e
        L_0x00cd:
            com.avos.avoscloud.AVException r0 = new com.avos.avoscloud.AVException     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            r2 = 603(0x25b, float:8.45E-43)
            java.lang.String r3 = "failed to upload file to qiniu."
            r0.<init>(r2, r3)     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            if (r15 == 0) goto L_0x00db
            r15.close()     // Catch:{ Exception -> 0x00db }
        L_0x00db:
            return r0
        L_0x00dc:
            r14 = 6
            com.avos.avoscloud.upload.QiniuAccessor r0 = r1.qiniuAccessor     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            com.avos.avoscloud.upload.QiniuAccessor$QiniuMKFileResponseData r0 = r0.makeFile(r8, r13, r14)     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            if (r0 == 0) goto L_0x00f7
            java.lang.String r0 = r0.key     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            java.lang.String r2 = r1.fileKey     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            boolean r0 = r0.equals(r2)     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            if (r0 != 0) goto L_0x00f0
            goto L_0x00f7
        L_0x00f0:
            if (r15 == 0) goto L_0x00f5
            r15.close()     // Catch:{ Exception -> 0x00f5 }
        L_0x00f5:
            r2 = 0
            return r2
        L_0x00f7:
            r0 = -1
            java.lang.String r2 = "upload file failure"
            com.avos.avoscloud.AVException r0 = com.avos.avoscloud.AVErrorUtils.createException(r0, r2)     // Catch:{ Exception -> 0x0106, all -> 0x0104 }
            if (r15 == 0) goto L_0x0103
            r15.close()     // Catch:{ Exception -> 0x0103 }
        L_0x0103:
            return r0
        L_0x0104:
            r0 = move-exception
            goto L_0x011d
        L_0x0106:
            r0 = move-exception
            r14 = r15
            goto L_0x0110
        L_0x0109:
            r0 = move-exception
            r2 = 0
            r15 = r2
            goto L_0x011d
        L_0x010d:
            r0 = move-exception
            r2 = 0
            r14 = r2
        L_0x0110:
            com.avos.avoscloud.AVException r2 = new com.avos.avoscloud.AVException     // Catch:{ all -> 0x011b }
            r2.<init>(r0)     // Catch:{ all -> 0x011b }
            if (r14 == 0) goto L_0x011a
            r14.close()     // Catch:{ Exception -> 0x011a }
        L_0x011a:
            return r2
        L_0x011b:
            r0 = move-exception
            r15 = r14
        L_0x011d:
            if (r15 == 0) goto L_0x0122
            r15.close()     // Catch:{ Exception -> 0x0122 }
        L_0x0122:
            goto L_0x0124
        L_0x0123:
            throw r0
        L_0x0124:
            goto L_0x0123
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.upload.QiniuSlicingUploader.doWork():com.avos.avoscloud.AVException");
    }
}
