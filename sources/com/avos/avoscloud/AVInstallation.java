package com.avos.avoscloud;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializeFilter;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.avos.avoscloud.AVObject.AVObjectCreator;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import java.io.File;
import java.io.IOException;
import java.util.TimeZone;
import java.util.UUID;

@AVClassName("_Installation")
public final class AVInstallation extends AVObject {
    public static final String AVINSTALLATION_ENDPOINT = "installations";
    private static final String CHANNELSTAG = "channel";
    public static final transient Creator CREATOR = AVObjectCreator.instance;
    private static final String DEVICETYPETAG = "deviceType";
    private static final String INSTALLATION = "installation";
    private static final String INSTALLATIONIDTAG = "installationId";
    private static final String INSTALLATION_AVNAME = "_Installation";
    private static final String LOGTAG = "com.avos.avoscloud.AVInstallation";
    public static final String REGISTRATION_ID = "registrationId";
    public static final String VENDOR = "vendor";
    private static volatile AVInstallation currentInstallation;
    private volatile String installationId;

    private static String deviceType() {
        return "android";
    }

    /* access modifiers changed from: protected */
    public boolean alwaysUsePost() {
        return true;
    }

    static {
        String simpleName = AVInstallation.class.getSimpleName();
        String str = AVINSTALLATION_ENDPOINT;
        String str2 = INSTALLATION_AVNAME;
        AVPowerfulUtils.createSettings(simpleName, str, str2);
        AVPowerfulUtils.createSettings(str2, str, str2);
        AVObject.registerSubclass(AVInstallation.class);
    }

    /* access modifiers changed from: 0000 */
    public void setInstallationId(String str) {
        this.installationId = str;
    }

    public static AVInstallation getCurrentInstallation() {
        return getCurrentInstallation(null);
    }

    public static AVInstallation getCurrentInstallation(Context context) {
        if (context == null) {
            context = AVOSCloud.applicationContext;
        }
        if (currentInstallation == null) {
            synchronized (AVInstallation.class) {
                if (currentInstallation == null && readInstallationFile(context) == null) {
                    createNewInstallation(context);
                }
            }
        }
        if (currentInstallation != null) {
            currentInstallation.initialize();
        }
        return currentInstallation;
    }

    private static void createNewInstallation(Context context) {
        String genInstallationId = genInstallationId();
        currentInstallation = new AVInstallation();
        currentInstallation.setInstallationId(genInstallationId);
        currentInstallation.put(INSTALLATIONIDTAG, genInstallationId);
        saveCurrentInstalationToLocal(context);
    }

    private static String genInstallationId() {
        String packageName = AVOSCloud.applicationContext.getPackageName();
        String uuid = UUID.randomUUID().toString();
        StringBuilder sb = new StringBuilder();
        sb.append(packageName);
        sb.append(uuid);
        return AVUtils.md5(sb.toString());
    }

    private static void saveCurrentInstalationToLocal(Context context) {
        try {
            writeInstallationFile(context, currentInstallation);
        } catch (Exception e) {
            log.e(LOGTAG, e);
        }
    }

    public AVInstallation() {
        super(INSTALLATION_AVNAME);
        this.installationId = null;
        this.requestStatistic = false;
        initialize();
    }

    public AVInstallation(Parcel parcel) {
        super(parcel);
        this.installationId = null;
    }

    private void initialize() {
        try {
            boolean isBlankString = AVUtils.isBlankString(getInstallationId());
            String str = INSTALLATIONIDTAG;
            if (!isBlankString) {
                put(str, getInstallationId(), false);
            }
            if (currentInstallation != null) {
                put(str, currentInstallation.getInstallationId(), false);
            }
            put(DEVICETYPETAG, deviceType(), false);
            put("timeZone", timezone(), false);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    private static String timezone() {
        TimeZone timeZone = TimeZone.getDefault();
        return timeZone != null ? timeZone.getID() : "unknown";
    }

    public String getInstallationId() {
        return this.installationId;
    }

    /* access modifiers changed from: protected */
    public void onSaveSuccess() {
        super.onSaveSuccess();
        try {
            writeInstallationFile(AVOSCloud.applicationContext, this);
        } catch (Exception e) {
            log.e(LOGTAG, e);
        }
    }

    /* access modifiers changed from: protected */
    public void onDataSynchronized() {
        super.onDataSynchronized();
        onSaveSuccess();
    }

    /* access modifiers changed from: protected */
    public void onSaveFailure() {
        avlog.d("roll back installationId since error there");
        synchronized (AVInstallation.class) {
            if (readInstallationFile(AVOSCloud.applicationContext) == null) {
                createNewInstallation(AVOSCloud.applicationContext);
            }
        }
    }

    protected static AVInstallation readInstallationFile(Context context) {
        if (context == null) {
            log.e(LOGTAG, "Please call AVOSCloud.initialize at first in Application");
            return null;
        }
        String str = "";
        try {
            File file = new File(context.getFilesDir(), INSTALLATION);
            if (file.exists()) {
                String readContentFromFile = AVPersistenceUtils.readContentFromFile(file);
                if (readContentFromFile.indexOf("{") >= 0) {
                    currentInstallation = (AVInstallation) JSON.parse(readContentFromFile);
                } else if (readContentFromFile.length() == UUID_LEN) {
                    currentInstallation = new AVInstallation();
                    currentInstallation.setInstallationId(readContentFromFile);
                    saveCurrentInstalationToLocal(context);
                }
                return currentInstallation;
            }
        } catch (Exception e) {
            log.e(LOGTAG, str, e);
        }
        return null;
    }

    /* access modifiers changed from: private */
    public static void writeInstallationFile(Context context, AVInstallation aVInstallation) throws IOException {
        if (context != null && aVInstallation != null) {
            aVInstallation.initialize();
            AVPersistenceUtils.saveContentToFile(JSON.toJSONString((Object) aVInstallation, (SerializeFilter) ObjectValueFilter.instance, SerializerFeature.WriteClassName, SerializerFeature.DisableCircularReferenceDetect), new File(context.getFilesDir(), INSTALLATION));
        }
    }

    public static AVQuery<AVInstallation> getQuery() {
        return new AVQuery<>(INSTALLATION_AVNAME);
    }

    public void put(String str, Object obj) {
        super.put(str, obj);
    }

    public void remove(String str) {
        super.remove(str);
    }

    protected static void updateCurrentInstallation() {
        try {
            if (AVOSCloud.showInternalDebugLog()) {
                avlog.d("try to update installation to fix date type data");
            }
            AVInstallation readInstallationFile = readInstallationFile(AVOSCloud.applicationContext);
            if (readInstallationFile != null && !AVUtils.isBlankString(readInstallationFile.getObjectId())) {
                readInstallationFile.fetchInBackground(new GetCallback<AVObject>() {
                    public void done(AVObject aVObject, AVException aVException) {
                        try {
                            AVInstallation.writeInstallationFile(AVOSCloud.applicationContext, (AVInstallation) aVObject);
                        } catch (IOException e) {
                            if (AVOSCloud.showInternalDebugLog()) {
                                e.printStackTrace();
                            }
                        }
                    }
                });
            }
        } catch (Exception e) {
            if (AVOSCloud.showInternalDebugLog()) {
                log.e("failed to update installation", e);
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean isDirty() {
        return AVUtils.isBlankString(this.objectId) || !this.operationQueue.isEmpty() || getUpdatedAt() == null || System.currentTimeMillis() - getUpdatedAt().getTime() > 86400000;
    }

    /* access modifiers changed from: protected */
    public void rebuildInstanceData() {
        super.rebuildInstanceData();
        this.installationId = getString(INSTALLATIONIDTAG);
    }

    /* access modifiers changed from: protected */
    public PaasClient getPaasClientInstance() {
        return PaasClient.pushInstance();
    }
}
