package com.avos.avoscloud.im.v2.messages;

import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVFile;
import com.avos.avoscloud.ProgressCallback;
import com.avos.avoscloud.SaveCallback;
import com.avos.avoscloud.im.v2.AVIMMessageCreator;
import com.avos.avoscloud.im.v2.AVIMMessageField;
import com.avos.avoscloud.im.v2.AVIMMessageType;
import com.avos.avoscloud.im.v2.AVIMTypedMessage;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@AVIMMessageType(type = -6)
public class AVIMFileMessage extends AVIMTypedMessage {
    public static final AVIMMessageCreator<AVIMFileMessage> CREATOR = new AVIMMessageCreator<>(AVIMFileMessage.class);
    static final String DURATION = "duration";
    static final String FILE_META = "metaData";
    static final String FILE_SIZE = "size";
    static final String FILE_URL = "url";
    static final String FORMAT = "format";
    private static final String LOCAL_PATH = "local_path";
    static final String OBJECT_ID = "objId";
    AVFile actualFile;
    @AVIMMessageField(name = "_lcattrs")
    Map<String, Object> attrs;
    @AVIMMessageField(name = "_lcfile")
    protected Map<String, Object> file;
    File localFile;
    ProgressCallback progressCallback;
    @AVIMMessageField(name = "_lctext")
    String text;

    public AVIMFileMessage() {
    }

    public AVIMFileMessage(String str) throws IOException {
        this(new File(str));
    }

    public AVIMFileMessage(File file2) throws IOException {
        this.localFile = file2;
        this.actualFile = AVFile.withFile(file2.getName(), file2);
        this.file = new HashMap();
        this.file.put(LOCAL_PATH, file2.getPath());
    }

    public AVIMFileMessage(AVFile aVFile) {
        this.actualFile = aVFile;
    }

    public Map<String, Object> getFile() {
        return this.file;
    }

    public String getLocalFilePath() {
        File file2 = this.localFile;
        if (file2 == null || !file2.exists()) {
            return null;
        }
        return this.localFile.getPath();
    }

    public AVFile getAVFile() {
        AVFile aVFile = this.actualFile;
        if (aVFile != null) {
            return aVFile;
        }
        Map<String, Object> map = this.file;
        if (map != null) {
            String str = "url";
            if (map.containsKey(str)) {
                Map<String, Object> map2 = this.file;
                String str2 = FILE_META;
                AVFile aVFile2 = new AVFile(null, (String) this.file.get(str), map2.containsKey(str2) ? (Map) this.file.get(str2) : null);
                Map<String, Object> map3 = this.file;
                String str3 = OBJECT_ID;
                if (map3.containsKey(str3)) {
                    aVFile2.setObjectId((String) this.file.get(str3));
                }
                return aVFile2;
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void setFile(Map<String, Object> map) {
        this.file = map;
        this.actualFile = new AVFile(null, (String) map.get("url"), (Map) map.get(FILE_META));
        this.actualFile.setObjectId((String) map.get(OBJECT_ID));
        String str = LOCAL_PATH;
        if (map.containsKey(str)) {
            this.localFile = new File((String) map.get(str));
        }
    }

    public String getFileUrl() {
        Map<String, Object> map = this.file;
        if (map != null) {
            return (String) map.get("url");
        }
        return null;
    }

    public Map<String, Object> getFileMetaData() {
        if (this.file == null) {
            this.file = new HashMap();
        }
        Map<String, Object> map = this.file;
        String str = FILE_META;
        if (map.containsKey(str)) {
            return (Map) this.file.get(str);
        }
        HashMap hashMap = new HashMap();
        hashMap.put(FILE_SIZE, Integer.valueOf(this.actualFile.getSize()));
        return hashMap;
    }

    public long getSize() {
        Map fileMetaData = getFileMetaData();
        if (fileMetaData != null) {
            String str = FILE_SIZE;
            if (fileMetaData.containsKey(str)) {
                return Long.valueOf(fileMetaData.get(str).toString()).longValue();
            }
        }
        return 0;
    }

    /* access modifiers changed from: protected */
    public void upload(final SaveCallback saveCallback) {
        AVFile aVFile = this.actualFile;
        if (aVFile != null) {
            aVFile.saveInBackground(new SaveCallback() {
                public void done(AVException aVException) {
                    if (aVException != null) {
                        saveCallback.internalDone(aVException);
                    } else {
                        AVIMFileMessage.this.fulFillFileInfo(saveCallback);
                    }
                }
            }, this.progressCallback);
        } else {
            saveCallback.internalDone(new AVException(new RuntimeException("cannot find the file!")));
        }
    }

    public void setProgressCallback(ProgressCallback progressCallback2) {
        this.progressCallback = progressCallback2;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public Map<String, Object> getAttrs() {
        return this.attrs;
    }

    public void setAttrs(Map<String, Object> map) {
        this.attrs = map;
    }

    /* access modifiers changed from: protected */
    public void fulFillFileInfo(final SaveCallback saveCallback) {
        if (this.actualFile != null) {
            this.file = getFile() == null ? new HashMap<>() : getFile();
            this.file.put(OBJECT_ID, this.actualFile.getObjectId());
            this.file.put("url", this.actualFile.getUrl());
            this.file.remove(LOCAL_PATH);
            final Map hashMap = getFileMetaData() == null ? new HashMap() : getFileMetaData();
            String str = FILE_SIZE;
            if (!hashMap.containsKey(str)) {
                hashMap.put(str, Integer.valueOf(this.actualFile.getSize()));
            }
            getAdditionalMetaData(hashMap, new SaveCallback() {
                public void done(AVException aVException) {
                    AVIMFileMessage.this.file.put(AVIMFileMessage.FILE_META, hashMap);
                    SaveCallback saveCallback = saveCallback;
                    if (saveCallback != null) {
                        saveCallback.internalDone(aVException);
                    }
                }
            });
            return;
        }
        saveCallback.internalDone(new AVException(new RuntimeException("cannot find the file!")));
    }

    static boolean isExternalAVFile(AVFile aVFile) {
        if (!(aVFile == null || aVFile.getMetaData() == null)) {
            String str = "__source";
            if (aVFile.getMetaData().containsKey(str) && aVFile.getMetaData().get(str).equals("external")) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void getAdditionalMetaData(Map<String, Object> map, SaveCallback saveCallback) {
        saveCallback.internalDone(null);
    }
}
