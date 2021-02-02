package com.avos.avoscloud;

import android.webkit.MimeTypeMap;
import com.alibaba.fastjson.annotation.JSONField;
import com.avos.avoscloud.upload.FileUploader;
import com.avos.avoscloud.upload.Uploader;
import com.avos.avoscloud.upload.Uploader.UploadCallback;
import com.avos.avoscloud.upload.UrlDirectlyUploader;
import com.koushikdutta.urlimageviewhelper.UrlImageViewHelper;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class AVFile {
    public static final String AVFILE_ENDPOINT = "files";
    public static String DEFAULTMIMETYPE = "application/octet-stream";
    private static final String ELDERMETADATAKEYFORIOSFIX = "metadata";
    static final String FILE_NAME_KEY = "_name";
    private static final String FILE_SUM_KEY = "_checksum";
    private static long MAX_FILE_BUF_SIZE = 8249344;
    private static final String THUMBNAIL_FMT = "?imageView/%d/w/%d/h/%d/q/%d/format/%s";
    private AVACL acl;
    private String bucket;
    private boolean dirty;
    private transient AVFileDownloader downloader;
    private AVObject fileObject;
    private String localPath;
    private String localTmpFilePath;
    private final HashMap<String, Object> metaData;
    private String name;
    private String objectId;
    private transient Uploader uploader;
    private String url;

    public static String className() {
        return "File";
    }

    public static void setUploadHeader(String str, String str2) {
        FileUploader.setUploadHeader(str, str2);
    }

    public AVFile() {
        this.metaData = new HashMap<>();
        if (PaasClient.storageInstance().getDefaultACL() != null) {
            this.acl = new AVACL(PaasClient.storageInstance().getDefaultACL());
        }
    }

    /* access modifiers changed from: 0000 */
    public AVObject getFileObject() {
        if (this.fileObject == null && !AVUtils.isBlankString(this.objectId)) {
            this.fileObject = AVObject.createWithoutData("_File", this.objectId);
        }
        return this.fileObject;
    }

    @Deprecated
    public AVFile(byte[] bArr) {
        this((String) null, bArr);
    }

    public AVFile(String str, String str2, Map<String, Object> map) {
        this(str, str2, map, true);
    }

    protected AVFile(String str, String str2, Map<String, Object> map, boolean z) {
        this();
        this.name = str;
        this.url = str2;
        this.dirty = false;
        if (map != null) {
            this.metaData.putAll(map);
        }
        if (z) {
            this.metaData.put("__source", "external");
        }
    }

    public AVFile(String str, byte[] bArr) {
        this();
        this.dirty = true;
        this.name = str;
        String str2 = "size";
        if (bArr != null) {
            String computeMD5 = AVUtils.computeMD5(bArr);
            StringBuilder sb = new StringBuilder();
            sb.append(AVFileDownloader.getAVFileCachePath());
            sb.append(computeMD5);
            this.localTmpFilePath = sb.toString();
            AVPersistenceUtils.saveContentToFile(bArr, new File(this.localTmpFilePath));
            this.metaData.put(FILE_SUM_KEY, computeMD5);
            this.metaData.put(str2, Integer.valueOf(bArr.length));
        } else {
            this.metaData.put(str2, Integer.valueOf(0));
        }
        AVUser currentUser = AVUser.getCurrentUser();
        this.metaData.put("owner", currentUser != null ? currentUser.getObjectId() : "");
        this.metaData.put(FILE_NAME_KEY, str);
    }

    protected AVFile(String str, String str2) {
        this(str, str2, null);
    }

    public String getObjectId() {
        return this.objectId;
    }

    public void setObjectId(String str) {
        this.objectId = str;
    }

    @Deprecated
    public static void parseFileWithObjectIdInBackground(String str, GetFileCallback<AVFile> getFileCallback) {
        withObjectIdInBackground(str, getFileCallback);
    }

    public static void withObjectIdInBackground(final String str, final GetFileCallback<AVFile> getFileCallback) {
        new AVQuery("_File").getInBackground(str, new GetCallback<AVObject>() {
            public void done(AVObject aVObject, AVException aVException) {
                if (aVException != null) {
                    GetFileCallback getFileCallback = getFileCallback;
                    if (getFileCallback != null) {
                        getFileCallback.internalDone(null, aVException);
                    }
                    return;
                }
                if (aVObject == null || AVUtils.isBlankString(aVObject.getObjectId())) {
                    GetFileCallback getFileCallback2 = getFileCallback;
                    if (getFileCallback2 != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Could not find file object by id:");
                        sb.append(str);
                        getFileCallback2.internalDone(null, new AVException(101, sb.toString()));
                    }
                } else {
                    AVFile access$000 = AVFile.createFileFromAVObject(aVObject);
                    GetFileCallback getFileCallback3 = getFileCallback;
                    if (getFileCallback3 != null) {
                        getFileCallback3.internalDone(access$000, null);
                    }
                }
            }
        });
    }

    @Deprecated
    public static AVFile parseFileWithObjectId(String str) throws AVException, FileNotFoundException {
        return withObjectId(str);
    }

    public static AVFile withObjectId(String str) throws AVException, FileNotFoundException {
        AVObject aVObject = new AVQuery("_File").get(str);
        if (aVObject != null && !AVUtils.isBlankString(aVObject.getObjectId())) {
            return createFileFromAVObject(aVObject);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Could not find file object by id:");
        sb.append(str);
        throw new FileNotFoundException(sb.toString());
    }

    @Deprecated
    public static AVFile parseFileWithAVObject(AVObject aVObject) {
        return withAVObject(aVObject);
    }

    public static AVFile withAVObject(AVObject aVObject) {
        if (aVObject != null && !AVUtils.isBlankString(aVObject.getObjectId())) {
            return createFileFromAVObject(aVObject);
        }
        throw new IllegalArgumentException("Invalid AVObject.");
    }

    /* access modifiers changed from: private */
    public static AVFile createFileFromAVObject(AVObject aVObject) {
        AVFile aVFile = new AVFile(aVObject.getObjectId(), aVObject.getString("url"), null, false);
        String str = "metadata";
        if (aVObject.getMap(str) != null && !aVObject.getMap(str).isEmpty()) {
            aVFile.metaData.putAll(aVObject.getMap(str));
        }
        String str2 = "metaData";
        if (aVObject.getMap(str2) != null) {
            aVFile.metaData.putAll(aVObject.getMap(str2));
        }
        aVFile.setObjectId(aVObject.getObjectId());
        aVFile.fileObject = aVObject;
        aVFile.setBucket((String) aVObject.get("bucket"));
        HashMap<String, Object> hashMap = aVFile.metaData;
        String str3 = FILE_NAME_KEY;
        if (!hashMap.containsKey(str3)) {
            aVFile.metaData.put(str3, aVObject.getString("name"));
        }
        return aVFile;
    }

    @Deprecated
    public static AVFile parseFileWithAbsoluteLocalPath(String str, String str2) throws Exception {
        return withAbsoluteLocalPath(str, str2);
    }

    public static AVFile withAbsoluteLocalPath(String str, String str2) throws FileNotFoundException {
        return withFile(str, new File(str2));
    }

    @Deprecated
    public static AVFile parseFileWithFile(String str, File file) throws FileNotFoundException {
        return withFile(str, file);
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x006c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.avos.avoscloud.AVFile withFile(java.lang.String r8, java.io.File r9) throws java.io.FileNotFoundException {
        /*
            java.lang.String r0 = ""
            if (r9 == 0) goto L_0x0083
            boolean r1 = r9.exists()
            if (r1 == 0) goto L_0x007d
            boolean r1 = r9.isFile()
            if (r1 == 0) goto L_0x007d
            com.avos.avoscloud.AVFile r1 = new com.avos.avoscloud.AVFile
            r1.<init>()
            java.lang.String r2 = r9.getAbsolutePath()
            r1.setLocalPath(r2)
            r1.setName(r8)
            r2 = 1
            r1.dirty = r2
            r1.name = r8
            long r2 = r9.length()
            java.io.InputStream r9 = com.avos.avoscloud.AVPersistenceUtils.getInputStreamFromFile(r9)     // Catch:{ Exception -> 0x0051 }
            java.lang.String r4 = "MD5"
            java.security.MessageDigest r4 = java.security.MessageDigest.getInstance(r4)     // Catch:{ Exception -> 0x0051 }
            if (r9 == 0) goto L_0x0051
            long r5 = MAX_FILE_BUF_SIZE     // Catch:{ Exception -> 0x0051 }
            int r6 = (int) r5     // Catch:{ Exception -> 0x0051 }
            byte[] r5 = new byte[r6]     // Catch:{ Exception -> 0x0051 }
        L_0x0039:
            int r6 = r9.read(r5)     // Catch:{ Exception -> 0x0051 }
            r7 = -1
            if (r6 == r7) goto L_0x0045
            r7 = 0
            r4.update(r5, r7, r6)     // Catch:{ Exception -> 0x0051 }
            goto L_0x0039
        L_0x0045:
            byte[] r4 = r4.digest()     // Catch:{ Exception -> 0x0051 }
            java.lang.String r4 = com.avos.avoscloud.AVUtils.hexEncodeBytes(r4)     // Catch:{ Exception -> 0x0051 }
            r9.close()     // Catch:{ Exception -> 0x0051 }
            goto L_0x0052
        L_0x0051:
            r4 = r0
        L_0x0052:
            java.util.HashMap<java.lang.String, java.lang.Object> r9 = r1.metaData
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            java.lang.String r3 = "size"
            r9.put(r3, r2)
            java.util.HashMap<java.lang.String, java.lang.Object> r9 = r1.metaData
            java.lang.String r2 = "_checksum"
            r9.put(r2, r4)
            com.avos.avoscloud.AVUser r9 = com.avos.avoscloud.AVUser.getCurrentUser()
            java.util.HashMap<java.lang.String, java.lang.Object> r2 = r1.metaData
            if (r9 == 0) goto L_0x0070
            java.lang.String r0 = r9.getObjectId()
        L_0x0070:
            java.lang.String r9 = "owner"
            r2.put(r9, r0)
            java.util.HashMap<java.lang.String, java.lang.Object> r9 = r1.metaData
            java.lang.String r0 = "_name"
            r9.put(r0, r8)
            return r1
        L_0x007d:
            java.io.FileNotFoundException r8 = new java.io.FileNotFoundException
            r8.<init>()
            throw r8
        L_0x0083:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "null file object."
            r8.<init>(r9)
            goto L_0x008c
        L_0x008b:
            throw r8
        L_0x008c:
            goto L_0x008b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVFile.withFile(java.lang.String, java.io.File):com.avos.avoscloud.AVFile");
    }

    public HashMap<String, Object> getMetaData() {
        return this.metaData;
    }

    public Object addMetaData(String str, Object obj) {
        return this.metaData.put(str, obj);
    }

    public Object getMetaData(String str) {
        return this.metaData.get(str);
    }

    public int getSize() {
        Number number = (Number) getMetaData("size");
        if (number != null) {
            return number.intValue();
        }
        return -1;
    }

    public String getOwnerObjectId() {
        return (String) getMetaData("owner");
    }

    public Object removeMetaData(String str) {
        return this.metaData.remove(str);
    }

    public void clearMetaData() {
        this.metaData.clear();
    }

    public String getName() {
        return this.name;
    }

    public String getOriginalName() {
        return (String) this.metaData.get(FILE_NAME_KEY);
    }

    public void setName(String str) {
        this.name = str;
    }

    public static String getMimeType(String str) {
        String str2 = DEFAULTMIMETYPE;
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (fileExtensionFromUrl != null) {
            str2 = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
        }
        return str2 == null ? DEFAULTMIMETYPE : str2;
    }

    public boolean isDirty() {
        return this.dirty;
    }

    @Deprecated
    public boolean isDataAvailable() {
        return AVUtils.isBlankString(this.localPath) || (!AVUtils.isBlankString(this.localTmpFilePath) && new File(this.localTmpFilePath).exists());
    }

    public String getUrl() {
        return this.url;
    }

    public String getThumbnailUrl(boolean z, int i, int i2) {
        return getThumbnailUrl(z, i, i2, 100, "png");
    }

    public String getThumbnailUrl(boolean z, int i, int i2, int i3, String str) {
        if (!AVOSCloud.isCN() || AppRouterManager.isQCloudApp(AVOSCloud.applicationId)) {
            throw new UnsupportedOperationException("We only support this method for qiniu storage.");
        } else if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Invalid width or height.");
        } else if (i3 < 1 || i3 > 100) {
            throw new IllegalArgumentException("Invalid quality,valid range is 0-100.");
        } else {
            if (str == null || AVUtils.isBlankString(str.trim())) {
                str = "png";
            }
            int i4 = z ? 2 : 1;
            StringBuilder sb = new StringBuilder();
            sb.append(getUrl());
            sb.append(String.format(THUMBNAIL_FMT, new Object[]{Integer.valueOf(i4), Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), str}));
            return sb.toString();
        }
    }

    public void setUrl(String str) {
        this.url = str;
    }

    /* access modifiers changed from: 0000 */
    public void setLocalPath(String str) {
        this.localPath = str;
    }

    public void save() throws AVException {
        if (AVUtils.isBlankString(this.objectId)) {
            cancelUploadIfNeed();
            AVException[] aVExceptionArr = new AVException[1];
            this.uploader = getUploader(null, null);
            if (aVExceptionArr[0] == null) {
                AVException doWork = this.uploader.doWork();
                if (doWork != null) {
                    throw doWork;
                }
                return;
            }
            throw aVExceptionArr[0];
        }
    }

    public synchronized void saveInBackground(SaveCallback saveCallback, ProgressCallback progressCallback) {
        if (AVUtils.isBlankString(this.objectId)) {
            cancelUploadIfNeed();
            this.uploader = getUploader(saveCallback, progressCallback);
            this.uploader.execute();
        } else {
            if (saveCallback != null) {
                saveCallback.internalDone(null);
            }
            if (progressCallback != null) {
                progressCallback.internalDone(Integer.valueOf(100), null);
            }
        }
    }

    public void saveInBackground(SaveCallback saveCallback) {
        saveInBackground(saveCallback, null);
    }

    public void saveInBackground() {
        saveInBackground(null);
    }

    @JSONField(serialize = false)
    @Deprecated
    public byte[] getData() throws AVException {
        if (!AVUtils.isBlankString(this.localPath)) {
            return getLocalFileData();
        }
        if (!AVUtils.isBlankString(this.localTmpFilePath)) {
            return getTmpFileData();
        }
        if (AVUtils.isBlankString(this.url)) {
            return null;
        }
        byte[] cacheData = getCacheData();
        if (cacheData != null) {
            return cacheData;
        }
        if (AVUtils.isConnected(AVOSCloud.applicationContext)) {
            cancelDownloadIfNeed();
            this.downloader = new AVFileDownloader();
            AVException doWork = this.downloader.doWork(getUrl());
            if (doWork == null) {
                return getCacheData();
            }
            throw doWork;
        }
        throw new AVException(100, "Connection lost");
    }

    @JSONField(serialize = false)
    public InputStream getDataStream() throws AVException {
        String str;
        if (!AVUtils.isBlankString(this.localPath)) {
            str = this.localPath;
        } else if (!AVUtils.isBlankString(this.localTmpFilePath)) {
            str = this.localTmpFilePath;
        } else if (!AVUtils.isBlankString(this.url)) {
            File cacheFile = AVFileDownloader.getCacheFile(this.url);
            if (cacheFile == null || !cacheFile.exists()) {
                if (AVUtils.isConnected(AVOSCloud.applicationContext)) {
                    cancelDownloadIfNeed();
                    this.downloader = new AVFileDownloader();
                    AVException doWork = this.downloader.doWork(getUrl());
                    if (doWork != null) {
                        throw doWork;
                    }
                } else {
                    throw new AVException(100, "Connection lost");
                }
            }
            str = cacheFile.getAbsolutePath();
        } else {
            str = "";
        }
        if (AVUtils.isBlankString(str)) {
            return null;
        }
        try {
            return AVPersistenceUtils.getInputStreamFromFile(new File(str));
        } catch (IOException e) {
            throw new AVException(e);
        }
    }

    public void getDataInBackground(GetDataCallback getDataCallback, ProgressCallback progressCallback) {
        boolean isBlankString = AVUtils.isBlankString(this.localPath);
        Integer valueOf = Integer.valueOf(100);
        if (!isBlankString) {
            if (progressCallback != null) {
                progressCallback.done(valueOf);
            }
            if (getDataCallback != null) {
                getDataCallback.internalDone(getLocalFileData(), null);
            }
        } else if (!AVUtils.isBlankString(this.localTmpFilePath)) {
            if (progressCallback != null) {
                progressCallback.done(valueOf);
            }
            if (getDataCallback != null) {
                getDataCallback.internalDone(getTmpFileData(), null);
            }
        } else if (!AVUtils.isBlankString(getUrl())) {
            cancelDownloadIfNeed();
            this.downloader = new AVFileDownloader(progressCallback, getDataCallback);
            this.downloader.execute(new String[]{getUrl()});
        } else if (getDataCallback != null) {
            getDataCallback.internalDone(new AVException(126, ""));
        }
    }

    public void getDataInBackground(GetDataCallback getDataCallback) {
        getDataInBackground(getDataCallback, null);
    }

    public void getDataStreamInBackground(GetDataStreamCallback getDataStreamCallback) {
        getDataStreamInBackground(getDataStreamCallback, null);
    }

    public void getDataStreamInBackground(GetDataStreamCallback getDataStreamCallback, ProgressCallback progressCallback) {
        String str;
        if (!AVUtils.isBlankString(this.localPath)) {
            str = this.localPath;
        } else if (!AVUtils.isBlankString(this.localTmpFilePath)) {
            str = this.localTmpFilePath;
        } else {
            if (!AVUtils.isBlankString(getUrl())) {
                File cacheFile = AVFileDownloader.getCacheFile(this.url);
                if (cacheFile != null && cacheFile.exists()) {
                    str = cacheFile.getAbsolutePath();
                }
            }
            str = "";
        }
        if (!AVUtils.isBlankString(str)) {
            if (progressCallback != null) {
                progressCallback.done(Integer.valueOf(100));
            }
            if (getDataStreamCallback != null) {
                try {
                    getDataStreamCallback.internalDone0(AVPersistenceUtils.getInputStreamFromFile(new File(str)), (AVException) null);
                } catch (IOException e) {
                    getDataStreamCallback.internalDone(new AVException(e));
                }
            }
        } else {
            cancelDownloadIfNeed();
            this.downloader = new AVFileDownloader(progressCallback, getDataStreamCallback);
            this.downloader.execute(new String[]{getUrl()});
        }
    }

    public void cancel() {
        cancelDownloadIfNeed();
        cancelUploadIfNeed();
    }

    private void cancelDownloadIfNeed() {
        AVFileDownloader aVFileDownloader = this.downloader;
        if (aVFileDownloader != null) {
            aVFileDownloader.cancel(true);
        }
    }

    private void cancelUploadIfNeed() {
        Uploader uploader2 = this.uploader;
        if (uploader2 != null) {
            uploader2.cancel(true);
        }
    }

    /* access modifiers changed from: 0000 */
    public void handleUploadedResponse(String str, String str2, String str3) {
        this.dirty = false;
        this.objectId = str;
        this.fileObject = AVObject.createWithoutData("_File", str);
        this.name = str2;
        this.url = str3;
    }

    public void delete() throws AVException {
        if (getFileObject() != null) {
            getFileObject().delete();
            return;
        }
        throw AVErrorUtils.createException(153, "File object is not exists.");
    }

    public void deleteEventually() {
        if (getFileObject() != null) {
            getFileObject().deleteEventually();
        }
    }

    public void deleteEventually(DeleteCallback deleteCallback) {
        if (getFileObject() != null) {
            getFileObject().deleteEventually(deleteCallback);
        }
    }

    public void deleteInBackground() {
        if (getFileObject() != null) {
            getFileObject().deleteInBackground();
        }
    }

    public void deleteInBackground(DeleteCallback deleteCallback) {
        if (getFileObject() != null) {
            getFileObject().deleteInBackground(deleteCallback);
        } else {
            deleteCallback.internalDone(null, AVErrorUtils.createException(153, "File object is not exists."));
        }
    }

    /* access modifiers changed from: 0000 */
    public String mimeType() {
        String str = !AVUtils.isBlankString(this.name) ? AVUtils.getMimeTypeFromLocalFile(this.name) : !AVUtils.isBlankString(this.url) ? AVUtils.getMimeTypeFromUrl(this.url) : "";
        return AVUtils.isBlankContent(str) ? DEFAULTMIMETYPE : str;
    }

    public Uploader getUploader(SaveCallback saveCallback, ProgressCallback progressCallback) {
        AnonymousClass2 r0 = new UploadCallback() {
            public void finishedWithResults(String str, String str2) {
                AVFile.this.handleUploadedResponse(str, str, str2);
            }
        };
        if (AVUtils.isBlankString(this.url)) {
            return new FileUploader(this, saveCallback, progressCallback, r0);
        }
        return new UrlDirectlyUploader(this, saveCallback, progressCallback, r0);
    }

    public String getBucket() {
        return this.bucket;
    }

    public void setBucket(String str) {
        this.bucket = str;
    }

    @JSONField(serialize = false)
    private byte[] getLocalFileData() {
        if (!AVUtils.isBlankString(this.localPath)) {
            return AVPersistenceUtils.readContentBytesFromFile(new File(this.localPath));
        }
        return null;
    }

    @JSONField(serialize = false)
    private byte[] getTmpFileData() {
        if (!AVUtils.isBlankString(this.localTmpFilePath)) {
            return AVPersistenceUtils.readContentBytesFromFile(new File(this.localTmpFilePath));
        }
        return null;
    }

    @JSONField(serialize = false)
    private byte[] getCacheData() {
        if (!AVUtils.isBlankString(this.url)) {
            File cacheFile = AVFileDownloader.getCacheFile(this.url);
            if (cacheFile != null && cacheFile.exists()) {
                return AVPersistenceUtils.readContentBytesFromFile(cacheFile);
            }
        }
        return null;
    }

    public AVACL getACL() {
        return this.acl;
    }

    public void setACL(AVACL avacl) {
        this.acl = avacl;
    }

    /* access modifiers changed from: protected */
    public JSONObject toJSONObject() {
        Map mapFromFile = AVUtils.mapFromFile(this);
        if (!AVUtils.isBlankString(this.url)) {
            mapFromFile.put("url", this.url);
        }
        return new JSONObject(mapFromFile);
    }

    public void clearCachedFile() {
        if (!AVUtils.isBlankString(this.localTmpFilePath)) {
            File file = new File(this.localTmpFilePath);
            if (file.exists() && file.isFile()) {
                file.delete();
            }
        }
        if (!AVUtils.isBlankString(this.url)) {
            File cacheFile = AVFileDownloader.getCacheFile(this.url);
            if (cacheFile != null && cacheFile.exists() && cacheFile.isFile()) {
                cacheFile.delete();
            }
        }
    }

    public static void clearAllCachedFiles() {
        clearCacheMoreThanDays(0);
    }

    public static void clearCacheMoreThanDays(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        if (i > 0) {
            currentTimeMillis -= (long) (i * UrlImageViewHelper.CACHE_DURATION_ONE_DAY);
        }
        clearDir(new File(AVFileDownloader.getAVFileCachePath()), currentTimeMillis);
    }

    private static void clearDir(File file, long j) {
        File[] listFiles;
        for (File file2 : file.listFiles()) {
            if (file2.isFile()) {
                if (file2.lastModified() < j) {
                    file2.delete();
                }
            } else if (file2.isDirectory()) {
                clearDir(file2, j);
            }
        }
    }
}
