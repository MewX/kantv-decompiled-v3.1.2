package com.avos.avoscloud;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.im.v2.AVIMClient.AVIMClientStatus;
import com.avos.avoscloud.im.v2.Conversation;
import com.avos.avoscloud.im.v2.Conversation.AVIMOperation;
import com.avos.avospush.push.AVConnectivityListener;
import com.avos.avospush.push.AVConnectivityReceiver;
import com.avos.avospush.push.AVShutdownListener;
import com.avos.avospush.push.AVShutdownReceiver;
import com.avos.avospush.session.CommandPacket;
import com.google.android.exoplayer2.C;

public class PushService extends Service {
    static String DefaultChannelId = "";
    /* access modifiers changed from: private */
    public static final String LOGTAG = "com.avos.avoscloud.PushService";
    /* access modifiers changed from: private */
    public static Handler _installationSaveHandler = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            AVInstallation.getCurrentInstallation().saveInBackground((SaveCallback) new SaveCallback() {
                public void done(AVException aVException) {
                    if (aVException != null) {
                        if ("already has one request sending".equals(aVException.getMessage())) {
                            PushService._installationSaveHandler.removeMessages(0);
                            Message obtain = Message.obtain();
                            obtain.what = 0;
                            PushService._installationSaveHandler.sendMessageDelayed(obtain, 2000);
                        }
                    }
                }
            });
        }
    };
    private static Object connecting = new Object();
    private static boolean isAutoWakeUp = true;
    private static boolean isNeedNotifyApplication = true;
    private static volatile boolean isStarted = false;
    /* access modifiers changed from: private */
    public static AVPushConnectionManager sPushConnectionManager;
    AVConnectivityReceiver connectivityReceiver;
    AVShutdownReceiver shutdownReceiver;

    public void onCreate() {
        log.d(LOGTAG, "On Create");
        super.onCreate();
        sPushConnectionManager = AVPushConnectionManager.getInstance(this);
        this.connectivityReceiver = new AVConnectivityReceiver(new AVConnectivityListener() {
            public void onNotConnected(Context context) {
            }

            public void onMobile(Context context) {
                PushService.sPushConnectionManager.initConnection();
            }

            public void onWifi(Context context) {
                PushService.sPushConnectionManager.initConnection();
            }
        });
        registerReceiver(this.connectivityReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.shutdownReceiver = new AVShutdownReceiver(new AVShutdownListener() {
            public void onShutdown(Context context) {
                PushService.sPushConnectionManager.cleanupSocketConnection();
            }
        });
        registerReceiver(this.shutdownReceiver, new IntentFilter("android.intent.action.ACTION_SHUTDOWN"));
        isStarted = true;
    }

    @TargetApi(5)
    public int onStartCommand(final Intent intent, int i, int i2) {
        notifyOtherApplication(intent != null ? intent.getAction() : null);
        if (!AVUtils.isConnected(this) || !isPushConnectionBroken()) {
            processIMRequests(intent);
        } else {
            synchronized (connecting) {
                try {
                    AVInstallation currentInstallation = AVInstallation.getCurrentInstallation();
                    String installationId = currentInstallation.getInstallationId();
                    if (currentInstallation.isDirty()) {
                        currentInstallation.saveInBackground();
                    }
                    String str = LOGTAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Start to connect to push server with installationId ");
                    sb.append(installationId);
                    log.d(str, sb.toString());
                    sPushConnectionManager.initConnection(new AVCallback() {
                        /* access modifiers changed from: protected */
                        public void internalDone0(Object obj, AVException aVException) {
                            if (aVException == null) {
                                PushService.this.processIMRequests(intent);
                            } else {
                                PushService.this.reportRouterConnectionException(intent, aVException);
                            }
                        }
                    });
                } catch (Exception e) {
                    log.e(LOGTAG, "Exception when init connection, looks like you have not called AVOSCloud.initialized yet", e);
                    e.printStackTrace();
                }
            }
        }
        return 1;
    }

    /* access modifiers changed from: private */
    public void reportRouterConnectionException(Intent intent, AVException aVException) {
        if (intent != null) {
            if (Conversation.AV_CONVERSATION_INTENT_ACTION.equalsIgnoreCase(intent.getAction())) {
                BroadcastUtil.sendIMLocalBroadcast(intent.getExtras().getString(Conversation.INTENT_KEY_CLIENT), intent.getExtras().getString(Conversation.INTENT_KEY_CONVERSATION), intent.getExtras().getInt(Conversation.INTENT_KEY_REQUESTID), (Throwable) aVException, AVIMOperation.getAVIMOperation(intent.getExtras().getInt(Conversation.INTENT_KEY_OPERATION)));
            }
        }
    }

    private void processLiveQueryEventFromClient(Intent intent) {
        sPushConnectionManager.sendLiveQueryLoginCmd(intent.getExtras().getString("id"), intent.getExtras().getInt(Conversation.INTENT_KEY_REQUESTID));
    }

    /* access modifiers changed from: private */
    public void processIMRequests(Intent intent) {
        if (intent != null) {
            if (Conversation.AV_CONVERSATION_INTENT_ACTION.equalsIgnoreCase(intent.getAction())) {
                processConversationEventsFromClient(intent);
            }
            if ("action_live_query_login".equalsIgnoreCase(intent.getAction())) {
                processLiveQueryEventFromClient(intent);
            }
            if (Conversation.AV_CONVERSATION_PARCEL_ACTION.equalsIgnoreCase(intent.getAction())) {
                processConversationParcelEventFromClient(intent);
            }
        }
    }

    public void onDestroy() {
        log.d(LOGTAG, "On Destroy");
        AVPushConnectionManager aVPushConnectionManager = sPushConnectionManager;
        if (aVPushConnectionManager != null) {
            aVPushConnectionManager.stop();
        }
        unregisterReceiver(this.connectivityReceiver);
        unregisterReceiver(this.shutdownReceiver);
        isStarted = false;
        if (isAutoWakeUp && VERSION.SDK_INT <= 25) {
            try {
                Intent intent = new Intent(AVOSCloud.applicationContext, PushService.class);
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                startService(intent);
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("failed to start PushService. cause: ");
                sb.append(e.getMessage());
                log.e(sb.toString());
            }
        }
        super.onDestroy();
    }

    public IBinder onBind(Intent intent) {
        log.d(LOGTAG, "On bind");
        return null;
    }

    private static void startServiceIfRequired(Context context, Class<? extends Activity> cls) {
        if (!isStarted) {
            if (context == null) {
                log.d(LOGTAG, "context is null");
            } else if (!AVUtils.checkPermission(context, "android.permission.INTERNET")) {
                log.e(LOGTAG, "Please add <uses-permission android:name=\"android.permission.INTERNET\"/> in your AndroidManifest file");
            } else if (!AVUtils.isConnected(context)) {
                log.d(LOGTAG, "No network available now");
            } else if (!AVUtils.isPushServiceAvailable(context, PushService.class)) {
                log.e(LOGTAG, "Please add <service android:name=\"com.avos.avoscloud.PushService\"/> in your AndroidManifest file");
            } else {
                startService(context, cls);
            }
        }
    }

    private static synchronized void startService(final Context context, final Class cls) {
        synchronized (PushService.class) {
            new Thread(new Runnable() {
                public void run() {
                    log.d(PushService.LOGTAG, "Start service");
                    try {
                        Intent intent = new Intent(context, PushService.class);
                        intent.putExtra(AVConstants.AV_PUSH_SERVICE_APPLICATION_ID, AVOSCloud.applicationId);
                        if (cls != null) {
                            intent.putExtra(AVConstants.AV_PUSH_SERVICE_DEFAULT_CALLBACK, cls.getName());
                        }
                        context.startService(intent);
                    } catch (Exception e) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("failed to start PushService. cause: ");
                        sb.append(e.getMessage());
                        log.e(sb.toString());
                    }
                }
            }).start();
        }
    }

    public static synchronized void subscribe(Context context, String str, Class<? extends Activity> cls) {
        synchronized (PushService.class) {
            startServiceIfRequired(context, cls);
            AVInstallation.getCurrentInstallation().addUnique("channels", str);
            _installationSaveHandler.sendMessage(Message.obtain());
            if (cls != null) {
                AVNotificationManager instance = AVNotificationManager.getInstance();
                instance.addDefaultPushCallback(str, cls.getName());
                if (instance.getDefaultPushCallback(AVOSCloud.applicationId) == null) {
                    instance.addDefaultPushCallback(AVOSCloud.applicationId, cls.getName());
                }
            }
        }
    }

    public static void setNotificationIcon(int i) {
        AVNotificationManager.getInstance().setNotificationIcon(i);
    }

    public static void setDefaultPushCallback(Context context, Class<? extends Activity> cls) {
        startServiceIfRequired(context, cls);
        AVNotificationManager.getInstance().addDefaultPushCallback(AVOSCloud.applicationId, cls.getName());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0046, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized void unsubscribe(android.content.Context r4, final java.lang.String r5) {
        /*
            java.lang.Class<com.avos.avoscloud.PushService> r4 = com.avos.avoscloud.PushService.class
            monitor-enter(r4)
            if (r5 != 0) goto L_0x0007
            monitor-exit(r4)
            return
        L_0x0007:
            com.avos.avoscloud.AVNotificationManager r0 = com.avos.avoscloud.AVNotificationManager.getInstance()     // Catch:{ all -> 0x0047 }
            r0.removeDefaultPushCallback(r5)     // Catch:{ all -> 0x0047 }
            com.avos.avoscloud.AVInstallation r0 = com.avos.avoscloud.AVInstallation.getCurrentInstallation()     // Catch:{ all -> 0x0047 }
            java.lang.String r0 = r0.getObjectId()     // Catch:{ all -> 0x0047 }
            boolean r0 = com.avos.avoscloud.AVUtils.isBlankString(r0)     // Catch:{ all -> 0x0047 }
            if (r0 == 0) goto L_0x0029
            com.avos.avoscloud.AVInstallation r0 = com.avos.avoscloud.AVInstallation.getCurrentInstallation()     // Catch:{ all -> 0x0047 }
            com.avos.avoscloud.PushService$5 r1 = new com.avos.avoscloud.PushService$5     // Catch:{ all -> 0x0047 }
            r1.<init>(r5)     // Catch:{ all -> 0x0047 }
            r0.saveInBackground(r1)     // Catch:{ all -> 0x0047 }
            goto L_0x0045
        L_0x0029:
            com.avos.avoscloud.AVInstallation r0 = com.avos.avoscloud.AVInstallation.getCurrentInstallation()     // Catch:{ all -> 0x0047 }
            java.lang.String r1 = "channels"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch:{ all -> 0x0047 }
            r3 = 0
            r2[r3] = r5     // Catch:{ all -> 0x0047 }
            java.util.List r5 = java.util.Arrays.asList(r2)     // Catch:{ all -> 0x0047 }
            r0.removeAll(r1, r5)     // Catch:{ all -> 0x0047 }
            android.os.Handler r5 = _installationSaveHandler     // Catch:{ all -> 0x0047 }
            android.os.Message r0 = android.os.Message.obtain()     // Catch:{ all -> 0x0047 }
            r5.sendMessage(r0)     // Catch:{ all -> 0x0047 }
        L_0x0045:
            monitor-exit(r4)
            return
        L_0x0047:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.PushService.unsubscribe(android.content.Context, java.lang.String):void");
    }

    static synchronized void sendData(CommandPacket commandPacket) {
        synchronized (PushService.class) {
            if (sPushConnectionManager != null) {
                sPushConnectionManager.sendData(commandPacket);
            }
        }
    }

    @TargetApi(14)
    public void onTaskRemoved(Intent intent) {
        if (AVOSCloud.showInternalDebugLog()) {
            log.d("try to restart service on task Removed");
        }
        if (isAutoWakeUp) {
            Intent intent2 = new Intent(getApplicationContext(), getClass());
            intent2.setPackage(getPackageName());
            ((AlarmManager) getApplicationContext().getSystemService(NotificationCompat.CATEGORY_ALARM)).set(3, SystemClock.elapsedRealtime() + 500, PendingIntent.getService(getApplicationContext(), 1, intent2, 134217728));
        }
        if (VERSION.SDK_INT >= 14) {
            super.onTaskRemoved(intent);
        }
    }

    protected static boolean isPushConnectionBroken() {
        AVPushConnectionManager aVPushConnectionManager = sPushConnectionManager;
        return aVPushConnectionManager == null || (aVPushConnectionManager != null && !aVPushConnectionManager.isConnectedToPushServer());
    }

    private void processConversationParcelEventFromClient(Intent intent) {
        int i = intent.getExtras().getInt(Conversation.INTENT_KEY_OPERATION);
        String string = intent.getExtras().getString(Conversation.INTENT_KEY_CLIENT);
        String string2 = intent.getExtras().getString(Conversation.INTENT_KEY_CONVERSATION);
        int i2 = intent.getExtras().getInt(Conversation.INTENT_KEY_CONV_TYPE, 1);
        int i3 = intent.getExtras().getInt(Conversation.INTENT_KEY_REQUESTID);
        AVIMOperation aVIMOperation = AVIMOperation.getAVIMOperation(i);
        AVSession orCreateSession = sPushConnectionManager.getOrCreateSession(string);
        PushServiceParcel pushServiceParcel = (PushServiceParcel) intent.getExtras().getParcelable(Conversation.INTENT_KEY_DATA);
        int i4 = AnonymousClass7.$SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation[aVIMOperation.ordinal()];
        if (i4 != 1 && i4 != 2) {
            return;
        }
        if (!AVUtils.isBlankString(string2)) {
            AVConversationHolder conversationHolder = orCreateSession.getConversationHolder(string2, i2);
            if (conversationHolder != null) {
                conversationHolder.patchMessage(pushServiceParcel, aVIMOperation, i3);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("can't find out conversation with id:");
            sb.append(string2);
            log.d(sb.toString());
            return;
        }
        log.d("conversationId is mandatory for MessageRecall or MessageUpdate.");
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0081  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0090  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0097  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00d3  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00da  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0160  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x016e  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0174  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x017a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void processConversationEventsFromClient(android.content.Intent r17) {
        /*
            r16 = this;
            android.os.Bundle r0 = r17.getExtras()
            java.lang.String r1 = "conversation.operation"
            int r0 = r0.getInt(r1)
            android.os.Bundle r1 = r17.getExtras()
            java.lang.String r2 = "conversation.client"
            java.lang.String r1 = r1.getString(r2)
            android.os.Bundle r2 = r17.getExtras()
            java.lang.String r3 = "convesration.id"
            java.lang.String r2 = r2.getString(r3)
            android.os.Bundle r3 = r17.getExtras()
            java.lang.String r4 = "conversation.type"
            r5 = 1
            int r3 = r3.getInt(r4, r5)
            android.os.Bundle r4 = r17.getExtras()
            java.lang.String r5 = "conversation.requestId"
            int r14 = r4.getInt(r5)
            com.avos.avoscloud.AVPushConnectionManager r4 = sPushConnectionManager
            com.avos.avoscloud.AVSession r6 = r4.getOrCreateSession(r1)
            com.avos.avoscloud.im.v2.Conversation$AVIMOperation r0 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.getAVIMOperation(r0)
            com.avos.avoscloud.im.v2.Conversation$AVIMOperation r4 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_SEND_MESSAGE
            java.lang.String r5 = "conversation.data"
            r7 = 0
            if (r0 == r4) goto L_0x005b
            android.os.Bundle r4 = r17.getExtras()
            java.lang.String r4 = r4.getString(r5)
            boolean r8 = com.avos.avoscloud.AVUtils.isBlankString(r4)
            if (r8 != 0) goto L_0x005b
            java.lang.Class<java.util.Map> r8 = java.util.Map.class
            java.lang.Object r4 = com.alibaba.fastjson.JSON.parseObject(r4, r8)
            java.util.Map r4 = (java.util.Map) r4
            goto L_0x005c
        L_0x005b:
            r4 = r7
        L_0x005c:
            com.avos.avoscloud.im.v2.Conversation$AVIMOperation r8 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CLIENT_OPEN
            if (r0 == r8) goto L_0x0076
            com.avos.avoscloud.im.v2.Conversation$AVIMOperation r8 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_MESSAGE_QUERY
            if (r0 == r8) goto L_0x0076
            com.avos.avoscloud.im.v2.Conversation$AVIMOperation r8 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CONVERSATION_QUERY
            if (r0 == r8) goto L_0x0076
            com.avos.avoscloud.im.v2.Conversation$AVIMOperation r8 = com.avos.avoscloud.im.v2.Conversation.AVIMOperation.CLIENT_REFRESH_TOKEN
            if (r0 == r8) goto L_0x0076
            com.avos.avoscloud.AVException r8 = r6.checkSessionStatus()
            if (r8 == 0) goto L_0x0076
            com.avos.avoscloud.BroadcastUtil.sendIMLocalBroadcast(r1, r2, r14, r8, r0)
            return
        L_0x0076:
            int[] r8 = com.avos.avoscloud.PushService.AnonymousClass7.$SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation
            int r9 = r0.ordinal()
            r8 = r8[r9]
            switch(r8) {
                case 3: goto L_0x017a;
                case 4: goto L_0x0174;
                case 5: goto L_0x016e;
                case 6: goto L_0x0160;
                case 7: goto L_0x00da;
                case 8: goto L_0x00d3;
                case 9: goto L_0x0097;
                case 10: goto L_0x0090;
                default: goto L_0x0081;
            }
        L_0x0081:
            r15 = r16
            boolean r1 = com.avos.avoscloud.AVUtils.isBlankString(r2)
            if (r1 == 0) goto L_0x018c
            java.lang.String r0 = "conversation id is null during promoting MemberInfo"
            com.avos.avoscloud.LogUtil.log.e(r0)
            goto L_0x01aa
        L_0x0090:
            r15 = r16
            r15.processSessionConnectionStatus(r6, r14)
            goto L_0x01aa
        L_0x0097:
            r15 = r16
            boolean r0 = com.avos.avoscloud.AVUtils.isBlankString(r2)
            if (r0 != 0) goto L_0x01aa
            com.avos.avoscloud.AVConversationHolder r0 = r6.getConversationHolder(r2, r3)
            if (r0 == 0) goto L_0x01aa
            android.os.Bundle r2 = r17.getExtras()
            android.os.Parcelable r2 = r2.getParcelable(r5)
            com.avos.avoscloud.im.v2.AVIMMessage r2 = (com.avos.avoscloud.im.v2.AVIMMessage) r2
            android.os.Bundle r3 = r17.getExtras()
            java.lang.String r4 = "conversation.messageoption"
            boolean r3 = r3.containsKey(r4)
            if (r3 == 0) goto L_0x00c6
            android.os.Bundle r3 = r17.getExtras()
            android.os.Parcelable r3 = r3.getParcelable(r4)
            com.avos.avoscloud.im.v2.AVIMMessageOption r3 = (com.avos.avoscloud.im.v2.AVIMMessageOption) r3
            goto L_0x00cb
        L_0x00c6:
            com.avos.avoscloud.im.v2.AVIMMessageOption r3 = new com.avos.avoscloud.im.v2.AVIMMessageOption
            r3.<init>()
        L_0x00cb:
            r2.setFrom(r1)
            r0.sendMessage(r2, r14, r3)
            goto L_0x01aa
        L_0x00d3:
            r15 = r16
            r6.conversationQuery(r4, r14)
            goto L_0x01aa
        L_0x00da:
            r15 = r16
            java.lang.String r0 = "conversation.member"
            java.lang.Object r0 = r4.get(r0)
            java.util.List r0 = (java.util.List) r0
            java.lang.String r1 = "conversation.attributes"
            boolean r2 = r4.containsKey(r1)
            if (r2 == 0) goto L_0x00f4
            java.lang.Object r1 = r4.get(r1)
            java.util.Map r1 = (java.util.Map) r1
            r8 = r1
            goto L_0x00f5
        L_0x00f4:
            r8 = r7
        L_0x00f5:
            java.lang.String r1 = "conversation.transient"
            boolean r2 = r4.containsKey(r1)
            r3 = 0
            if (r2 == 0) goto L_0x010a
            java.lang.Object r1 = r4.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            r9 = r1
            goto L_0x010b
        L_0x010a:
            r9 = 0
        L_0x010b:
            java.lang.String r1 = "conversation.unique"
            java.lang.Object r1 = r4.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r10 = r1.booleanValue()
            java.lang.String r1 = "conversation.sys"
            boolean r2 = r4.containsKey(r1)
            if (r2 == 0) goto L_0x012b
            java.lang.Object r1 = r4.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            r13 = r1
            goto L_0x012c
        L_0x012b:
            r13 = 0
        L_0x012c:
            java.lang.String r1 = "conversation.temp"
            boolean r2 = r4.containsKey(r1)
            if (r2 == 0) goto L_0x0140
            java.lang.Object r1 = r4.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            r11 = r1
            goto L_0x0141
        L_0x0140:
            r11 = 0
        L_0x0141:
            r1 = 259200(0x3f480, float:3.63217E-40)
            java.lang.String r2 = "conversation.tempTTL"
            boolean r3 = r4.containsKey(r2)
            if (r3 == 0) goto L_0x0158
            java.lang.Object r1 = r4.get(r2)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            r12 = r1
            goto L_0x015b
        L_0x0158:
            r12 = 259200(0x3f480, float:3.63217E-40)
        L_0x015b:
            r7 = r0
            r6.createConversation(r7, r8, r9, r10, r11, r12, r13, r14)
            goto L_0x01aa
        L_0x0160:
            r15 = r16
            java.lang.String r0 = "client.oneline"
            java.lang.Object r0 = r4.get(r0)
            java.util.List r0 = (java.util.List) r0
            r6.queryOnlinePeers(r0, r14)
            goto L_0x01aa
        L_0x016e:
            r15 = r16
            r6.close(r14)
            goto L_0x01aa
        L_0x0174:
            r15 = r16
            r6.renewRealtimeSesionToken(r14)
            goto L_0x01aa
        L_0x017a:
            r15 = r16
            android.os.Bundle r0 = r17.getExtras()
            java.lang.String r1 = "conversation.client.parcel"
            android.os.Parcelable r0 = r0.getParcelable(r1)
            com.avos.avoscloud.AVIMClientParcel r0 = (com.avos.avoscloud.AVIMClientParcel) r0
            r6.open(r0, r14)
            goto L_0x01aa
        L_0x018c:
            com.avos.avoscloud.AVConversationHolder r1 = r6.getConversationHolder(r2, r3)
            if (r1 != 0) goto L_0x01a7
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "not found target conversation with id="
            r0.append(r1)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            com.avos.avoscloud.LogUtil.log.w(r0)
            goto L_0x01aa
        L_0x01a7:
            r1.processConversationCommandFromClient(r0, r4, r14)
        L_0x01aa:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.PushService.processConversationEventsFromClient(android.content.Intent):void");
    }

    private void processSessionConnectionStatus(AVSession aVSession, int i) {
        AVIMClientStatus aVIMClientStatus = AVIMClientStatus.AVIMClientStatusNone;
        if (aVSession.sessionOpened.get() && aVSession.sessionPaused.get()) {
            aVIMClientStatus = AVIMClientStatus.AVIMClientStatusPaused;
        } else if (aVSession.sessionOpened.get()) {
            aVIMClientStatus = AVIMClientStatus.AVIMClientStatusOpened;
        }
        Bundle bundle = new Bundle();
        bundle.putInt(Conversation.callbackClientStatus, aVIMClientStatus.getCode());
        BroadcastUtil.sendIMLocalBroadcast(aVSession.getSelfPeerId(), (String) null, i, bundle, AVIMOperation.CLIENT_STATUS);
    }

    private void notifyOtherApplication(String str) {
        if (isNeedNotifyApplication && !"com.avos.avoscloud.notify.action".equals(str)) {
            isNeedNotifyApplication = false;
            try {
                if (getApplicationContext().getPackageManager().getServiceInfo(new ComponentName(getApplicationContext(), PushService.class), 0).exported) {
                    NotifyUtil.notifyHandler.sendEmptyMessage(1024);
                }
            } catch (NameNotFoundException unused) {
            }
        }
    }

    public static void setAutoWakeUp(boolean z) {
        isAutoWakeUp = z;
    }

    @TargetApi(26)
    public static void setDefaultChannelId(Context context, String str) {
        DefaultChannelId = str;
        if (VERSION.SDK_INT > 25) {
            try {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                NotificationChannel notificationChannel = new NotificationChannel(str, context.getPackageName(), 3);
                notificationChannel.setDescription("PushNotification");
                notificationManager.createNotificationChannel(notificationChannel);
            } catch (Exception unused) {
                log.w("failed to create NotificationChannel, then perhaps PushNotification doesn't work well on Android O and newer version.");
            }
        }
    }
}
